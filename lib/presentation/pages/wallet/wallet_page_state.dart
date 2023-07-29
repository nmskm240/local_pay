// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'wallet_page_state.freezed.dart';

@freezed
class WalletPageState with _$WalletPageState {
  const WalletPageState._();
  const factory WalletPageState({
    required int walletbalance,
  }) = _WalletPageState;
}
