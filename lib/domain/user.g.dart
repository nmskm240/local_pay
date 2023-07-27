// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      name: json['name'] as String,
      createdAt: const CreatedAt().fromJson(json['created_at'] as Timestamp?),
      updatedAt: const UpdatedAt().fromJson(json['updated_at'] as Timestamp?),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'name': instance.name,
      'created_at': const CreatedAt().toJson(instance.createdAt),
      'updated_at': const UpdatedAt().toJson(instance.updatedAt),
    };
