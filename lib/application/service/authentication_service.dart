// Package imports:
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final authentication = Provider<AuthenticationService>((ref) {
  return AuthenticationService(FirebaseAuth.instance);
});

class AuthenticationService {
  const AuthenticationService(this._auth);

  final FirebaseAuth _auth;

  bool get isSignedIn => _auth.currentUser == null;

  Future<void> signInWithEmailAndPassword(String email, String password) async {
    await _auth.signInWithEmailAndPassword(email: email, password: password);
  }

  Future<void> signInWithGoogle() async {
    final provider = GoogleAuthProvider();
    await _auth.signInWithProvider(provider);
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
