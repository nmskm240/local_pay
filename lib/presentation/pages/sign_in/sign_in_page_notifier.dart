// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:local_pay/presentation/pages/sign_in/sign_in_page_state.dart';

part 'sign_in_page_notifier.g.dart';

@riverpod
class SignInPageNotifier extends _$SignInPageNotifier {
  SignInPageNotifier() : super();

  @override
  SignInPageState build() {
    return SignInPageState(
      key: GlobalKey<FormBuilderState>(),
    );
  }
}
