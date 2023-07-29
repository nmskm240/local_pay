// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'wallet.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Wallet _$$_WalletFromJson(Map<String, dynamic> json) => _$_Wallet(
      balance: json['balance'] as int? ?? 0,
      owner: json['owner'] as String,
      createdAt: const CreatedAt().fromJson(json['created_at']),
      updatedAt: const UpdatedAt().fromJson(json['updated_at']),
    );

Map<String, dynamic> _$$_WalletToJson(_$_Wallet instance) => <String, dynamic>{
      'balance': instance.balance,
      'owner': instance.owner,
      'created_at': const CreatedAt().toJson(instance.createdAt),
      'updated_at': const UpdatedAt().toJson(instance.updatedAt),
    };
