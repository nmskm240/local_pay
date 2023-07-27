// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

class CreatedAt implements JsonConverter<DateTime?, Timestamp?> {
  const CreatedAt();

  @override
  DateTime? fromJson(Timestamp? timestamp) {
    return timestamp?.toDate();
  }

  @override
  Timestamp? toJson(DateTime? date) {
    date ??= DateTime.now().toUtc();
    return Timestamp.fromDate(date);
  }
}
