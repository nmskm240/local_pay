// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

// Package imports:
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:local_pay/application/enum/firebase_auth_exception_reason.dart';
import 'package:local_pay/application/service/auth_service.dart';
import 'package:local_pay/presentation/app_router.dart';
import 'package:local_pay/presentation/pages/sign_in/sign_in_page_state.dart';

part 'sign_in_page_notifier.g.dart';

@riverpod
class SignInPageNotifier extends _$SignInPageNotifier {
  SignInPageNotifier() : super();

  @override
  SignInPageState build() {
    return SignInPageState(
      formKey: GlobalKey<FormBuilderState>(),
    );
  }

  Future<void> onPressedEmailAndPasswordSignInButton() async {
    final email = state.formKey.currentState!.getRawValue<String>("email");
    final password =
        state.formKey.currentState!.getRawValue<String>("password");
    if (email == null || password == null) {
      throw Exception("not found email and password field");
    }
    if (!state.formKey.currentState!.validate()) {
      return;
    }
    try {
      final credential = EmailAuthProvider.credential(
        email: email,
        password: password,
      );
      await ref.read(authentication).signIn(credential);
      await ref.read(router).replace(const MainMenuRoute());
    } on FirebaseAuthException catch (e) {
      final reason = FirebaseAuthExceptionReason.values.byName(e.code);
      switch (reason) {
        case FirebaseAuthExceptionReason.userDisabled:
          //TODO: アカウントが使用できないことをユーザに通知する
          break;
        case FirebaseAuthExceptionReason.userNotFound:
        case FirebaseAuthExceptionReason.worngPassword:
          state.formKey.currentState!.fields["email"]!
              .invalidate("Wrong email address or password");
          break;
        // case FirebaseAuthExceptionReason.invalidEmail:
        //   // NOTE: FormBuilderValidators.email()で事前確認しているため必要ない
        //   break;
        default:
          // NOTE: switch分岐上必要なだけでここに来ることはない
          rethrow;
      }
    }
  }

  Future<void> onPressedGoogleSignInButton() async {
    try {
      final user = await GoogleSignIn().signIn();
      if (user == null) return;
      final auth = await user.authentication;
      final credential = GoogleAuthProvider.credential(
        accessToken: auth.accessToken,
        idToken: auth.idToken,
      );
      await ref.read(authentication).signIn(credential);
      await ref.read(router).replace(const MainMenuRoute());
    } on FirebaseAuthException catch (e) {
      final reason = FirebaseAuthExceptionReason.values.byName(e.code);
      switch (reason) {
        case FirebaseAuthExceptionReason.accountExistsWithDifferentCredential:
          //TODO: ダイアログなどでユーザに通知した方がいいかも
          debugPrintStack(label: "use other auth provider");
          break;
        case FirebaseAuthExceptionReason.operationNotAllowed:
          throw Exception("invalided firebase settings");
        case FirebaseAuthExceptionReason.userDisabled:
          //TODO: アカウントが使用できないことをユーザに通知する
          debugPrintStack(label: e.message);
          break;
        default:
          // NOTE: switch分岐上必要なだけでここに来ることはない
          rethrow;
      }
    }
  }

  Future<void> onPressedAnonymousSignUpButton() async {
    try {
      await ref.read(authentication).signUp();
      await ref.read(router).replace(const MainMenuRoute());
    } on FirebaseAuthException catch (e) {
      final reason = FirebaseAuthExceptionReason.values.byName(e.code);
      switch (reason) {
        case FirebaseAuthExceptionReason.operationNotAllowed:
          throw Exception("invalided firebase settings");
        default:
          // NOTE: switch分岐上必要なだけでここに来ることはない
          rethrow;
      }
    }
  }
}
