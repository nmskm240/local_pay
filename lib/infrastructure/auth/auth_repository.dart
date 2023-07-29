// Package imports:
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

final authRepository = Provider<FirebaseAuth>((ref) {
  return FirebaseAuth.instance;
});
