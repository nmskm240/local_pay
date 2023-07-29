// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class CreatedAt implements JsonConverter<DateTime?, dynamic> {
  const CreatedAt();

  @override
  DateTime? fromJson(dynamic arg) {
    final timestamp = arg as Timestamp?;
    return timestamp?.toDate();
  }

  @override
  dynamic toJson(DateTime? date) {
    if (date == null) return FieldValue.serverTimestamp();
    return Timestamp.fromDate(date);
  }
}
