// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:local_pay/domain/annotation/created_at.dart';
import 'package:local_pay/domain/annotation/updated_at.dart';

part 'wallet.freezed.dart';
part 'wallet.g.dart';

@freezed
class Wallet with _$Wallet {
  const Wallet._();
  const factory Wallet({
    @Default(0) int balance,
    required String owner,
    @JsonKey(name: "created_at") @CreatedAt() DateTime? createdAt,
    @JsonKey(name: "updated_at") @UpdatedAt() DateTime? updatedAt,
  }) = _Wallet;

  factory Wallet.fromJson(Map<String, dynamic> json) => _$WalletFromJson(json);
}
