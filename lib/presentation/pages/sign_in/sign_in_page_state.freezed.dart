// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sign_in_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInPageState {
  GlobalKey<FormBuilderState> get formKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInPageStateCopyWith<SignInPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInPageStateCopyWith<$Res> {
  factory $SignInPageStateCopyWith(
          SignInPageState value, $Res Function(SignInPageState) then) =
      _$SignInPageStateCopyWithImpl<$Res, SignInPageState>;
  @useResult
  $Res call({GlobalKey<FormBuilderState> formKey});
}

/// @nodoc
class _$SignInPageStateCopyWithImpl<$Res, $Val extends SignInPageState>
    implements $SignInPageStateCopyWith<$Res> {
  _$SignInPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
  }) {
    return _then(_value.copyWith(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormBuilderState>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SignInPageStateCopyWith<$Res>
    implements $SignInPageStateCopyWith<$Res> {
  factory _$$_SignInPageStateCopyWith(
          _$_SignInPageState value, $Res Function(_$_SignInPageState) then) =
      __$$_SignInPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({GlobalKey<FormBuilderState> formKey});
}

/// @nodoc
class __$$_SignInPageStateCopyWithImpl<$Res>
    extends _$SignInPageStateCopyWithImpl<$Res, _$_SignInPageState>
    implements _$$_SignInPageStateCopyWith<$Res> {
  __$$_SignInPageStateCopyWithImpl(
      _$_SignInPageState _value, $Res Function(_$_SignInPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? formKey = null,
  }) {
    return _then(_$_SignInPageState(
      formKey: null == formKey
          ? _value.formKey
          : formKey // ignore: cast_nullable_to_non_nullable
              as GlobalKey<FormBuilderState>,
    ));
  }
}

/// @nodoc

class _$_SignInPageState extends _SignInPageState {
  const _$_SignInPageState({required this.formKey}) : super._();

  @override
  final GlobalKey<FormBuilderState> formKey;

  @override
  String toString() {
    return 'SignInPageState(formKey: $formKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInPageState &&
            (identical(other.formKey, formKey) || other.formKey == formKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, formKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SignInPageStateCopyWith<_$_SignInPageState> get copyWith =>
      __$$_SignInPageStateCopyWithImpl<_$_SignInPageState>(this, _$identity);
}

abstract class _SignInPageState extends SignInPageState {
  const factory _SignInPageState(
          {required final GlobalKey<FormBuilderState> formKey}) =
      _$_SignInPageState;
  const _SignInPageState._() : super._();

  @override
  GlobalKey<FormBuilderState> get formKey;
  @override
  @JsonKey(ignore: true)
  _$$_SignInPageStateCopyWith<_$_SignInPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
