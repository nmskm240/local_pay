// Package imports:
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_sign_in/google_sign_in.dart';

// Project imports:
import 'package:local_pay/infrastructure/firebase/authentication.dart';

enum FirebaseAuthExceptionReason {
  accountExistsWithDifferentCredential("account-exists-with-different-credential"),
  emailAlreadyInUse("email-already-in-use"),
  invalidEmail("invalid-email"),
  operationNotAllowed("operation-not-allowed"),
  userDisabled("user-disabled"),
  userNotFound("user-not-found"),
  weakPassword("weak-password"),
  worngPassword("wrong-password"),
  ;

  const FirebaseAuthExceptionReason(this.code);

  final String code;
}

final authentication = Provider<AuthenticationService>((ref) {
  final auth = ref.watch(firebaseAuthProvider);
  return AuthenticationService(auth);
});

class AuthenticationService {
  const AuthenticationService(this._auth);

  final FirebaseAuth _auth;

  bool get isSignedIn => _auth.currentUser != null;

  Future<UserCredential> signInWithEmailAndPassword(
      String email, String password) async {
    return await _auth.signInWithEmailAndPassword(
        email: email, password: password);
  }

  Future<UserCredential> signInWithGoogle() async {
    final user = await GoogleSignIn().signIn();
    final auth = await user?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: auth?.accessToken,
      idToken: auth?.idToken,
    );
    return await _auth.signInWithCredential(credential);
  }

  Future<UserCredential> signInAnonymously() async {
    return await _auth.signInAnonymously();
  }

  Future<void> signOut() async {
    await _auth.signOut();
  }
}
