// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_in_page_state.freezed.dart';

@freezed
class SignInPageState with _$SignInPageState {
  const factory SignInPageState({
    required GlobalKey<FormBuilderState> key,
  }) = _SignInPageState;
}
