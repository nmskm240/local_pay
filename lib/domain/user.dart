// ignore_for_file: invalid_annotation_target

// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:local_pay/domain/annotation/created_at.dart';
import 'package:local_pay/domain/annotation/updated_at.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const User._();
  const factory User({
    required String name,
    @JsonKey(name: "created_at") @CreatedAt() DateTime? createdAt,
    @JsonKey(name: "updated_at") @UpdatedAt() DateTime? updatedAt,
  }) = _User;

  factory User.fromJson(Map<String, dynamic> json) => _$UserFromJson(json);
}
