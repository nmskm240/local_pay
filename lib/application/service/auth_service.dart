// Package imports:
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:local_pay/domain/user/i_user_repository.dart';
import 'package:local_pay/domain/user/user.dart' as domain;
import 'package:local_pay/infrastructure/auth/auth_repository.dart';
import 'package:local_pay/infrastructure/firebase/user_repository.dart';

final authentication = Provider<Authentication>((ref) {
  final auth = ref.watch(authRepository);
  final repository = ref.watch(userRepository);
  return Authentication(auth, repository);
});

class Authentication {
  Authentication(this._authentication, this._userRepository) {
    _authentication.authStateChanges().listen(_onAuthStateChanges);
  }

  final FirebaseAuth _authentication;
  final IUserRepository _userRepository;
  bool _isSignedIn = false;

  bool get isSignedIn => _isSignedIn;

  void _onAuthStateChanges(User? user) {
    _isSignedIn = user != null;
  }

  Future<void> signIn(AuthCredential credential) async {
    await _authentication.signInWithCredential(credential);
  }

  Future<void> signUp(String userName) async {
    final credential = await _authentication.signInAnonymously();
    final user = domain.User(id: credential.user!.uid, name: userName);
    await _userRepository.save(user);
  }

  Future<void> signOut() async {
    await _authentication.signOut();
  }
}
