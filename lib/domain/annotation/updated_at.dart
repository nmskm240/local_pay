// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class UpdatedAt implements JsonConverter<DateTime?, dynamic> {
  const UpdatedAt();

  @override
  DateTime? fromJson(dynamic arg) {
    final timestamp = arg as Timestamp?;
    return timestamp?.toDate();
  }

  @override
  FieldValue toJson(DateTime? _) {
    return FieldValue.serverTimestamp();
  }
}
