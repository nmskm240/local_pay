// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:sign_in_button/sign_in_button.dart';

// Project imports:
import 'package:local_pay/presentation/pages/sign_in/sign_in_page_notifier.dart';
import 'package:local_pay/presentation/widgets/form/email_and_password_form.dart';

@RoutePage()
class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: _Body(),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(signInPageNotifierProvider);
    final notifie = ref.read(signInPageNotifierProvider.notifier);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            EmailAndPasswordForm(state.key),
            ElevatedButton(
              child: const Text("Sign in"),
              onPressed: () {},
            ),
            SignInButton(
              Buttons.google,
              onPressed: () {},
            ),
            TextButton(
              child: const Text("Sign up"),
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
