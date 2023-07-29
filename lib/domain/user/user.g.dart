// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as String,
      name: json['name'] as String,
      createdAt: const CreatedAt().fromJson(json['created_at']),
      updatedAt: const UpdatedAt().fromJson(json['updated_at']),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'created_at': const CreatedAt().toJson(instance.createdAt),
      'updated_at': const UpdatedAt().toJson(instance.updatedAt),
    };
