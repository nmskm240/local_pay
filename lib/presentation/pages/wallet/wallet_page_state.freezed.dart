// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_page_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WalletPageState {
  int get walletbalance => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $WalletPageStateCopyWith<WalletPageState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletPageStateCopyWith<$Res> {
  factory $WalletPageStateCopyWith(
          WalletPageState value, $Res Function(WalletPageState) then) =
      _$WalletPageStateCopyWithImpl<$Res, WalletPageState>;
  @useResult
  $Res call({int walletbalance});
}

/// @nodoc
class _$WalletPageStateCopyWithImpl<$Res, $Val extends WalletPageState>
    implements $WalletPageStateCopyWith<$Res> {
  _$WalletPageStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletbalance = null,
  }) {
    return _then(_value.copyWith(
      walletbalance: null == walletbalance
          ? _value.walletbalance
          : walletbalance // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_WalletPageStateCopyWith<$Res>
    implements $WalletPageStateCopyWith<$Res> {
  factory _$$_WalletPageStateCopyWith(
          _$_WalletPageState value, $Res Function(_$_WalletPageState) then) =
      __$$_WalletPageStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int walletbalance});
}

/// @nodoc
class __$$_WalletPageStateCopyWithImpl<$Res>
    extends _$WalletPageStateCopyWithImpl<$Res, _$_WalletPageState>
    implements _$$_WalletPageStateCopyWith<$Res> {
  __$$_WalletPageStateCopyWithImpl(
      _$_WalletPageState _value, $Res Function(_$_WalletPageState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? walletbalance = null,
  }) {
    return _then(_$_WalletPageState(
      walletbalance: null == walletbalance
          ? _value.walletbalance
          : walletbalance // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_WalletPageState extends _WalletPageState {
  const _$_WalletPageState({required this.walletbalance}) : super._();

  @override
  final int walletbalance;

  @override
  String toString() {
    return 'WalletPageState(walletbalance: $walletbalance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletPageState &&
            (identical(other.walletbalance, walletbalance) ||
                other.walletbalance == walletbalance));
  }

  @override
  int get hashCode => Object.hash(runtimeType, walletbalance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletPageStateCopyWith<_$_WalletPageState> get copyWith =>
      __$$_WalletPageStateCopyWithImpl<_$_WalletPageState>(this, _$identity);
}

abstract class _WalletPageState extends WalletPageState {
  const factory _WalletPageState({required final int walletbalance}) =
      _$_WalletPageState;
  const _WalletPageState._() : super._();

  @override
  int get walletbalance;
  @override
  @JsonKey(ignore: true)
  _$$_WalletPageStateCopyWith<_$_WalletPageState> get copyWith =>
      throw _privateConstructorUsedError;
}
