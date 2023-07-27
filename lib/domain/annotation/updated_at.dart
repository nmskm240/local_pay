// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class UpdatedAt implements JsonConverter<DateTime?, Timestamp?> {
  const UpdatedAt();

  @override
  DateTime? fromJson(Timestamp? timestamp) {
    return timestamp?.toDate();
  }

  @override
  Timestamp? toJson(DateTime? _) {
    final date = DateTime.now().toUtc();
    return Timestamp.fromDate(date);
  }
}
