// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:form_builder_validators/form_builder_validators.dart';

class EmailAndPasswordForm extends StatelessWidget {
  const EmailAndPasswordForm(
    this._formKey, {
    this.email = "",
    this.password = "",
    super.key,
  });

  final GlobalKey<FormBuilderState> _formKey;
  final String email;
  final String password;

  @override
  Widget build(BuildContext context) {
    return FormBuilder(
      key: _formKey,
      initialValue: {"email": email, "password": password},
      child: Column(
        children: <Widget>[
          FormBuilderTextField(
            name: "email",
            decoration: const InputDecoration(
              label: Text("Email"),
            ),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
              FormBuilderValidators.email(),
            ]),
          ),
          FormBuilderTextField(
            name: "password",
            decoration: const InputDecoration(
              label: Text("Password"),
            ),
            validator: FormBuilderValidators.compose([
              FormBuilderValidators.required(),
            ]),
          ),
        ],
      ),
    );
  }
}
