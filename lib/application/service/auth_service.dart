// Package imports:
import 'package:firebase_auth/firebase_auth.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:local_pay/domain/user/i_user_repository.dart';
import 'package:local_pay/domain/user/user.dart' as domain_user;
import 'package:local_pay/domain/wallet/i_wallet_repository.dart';
import 'package:local_pay/domain/wallet/wallet.dart';
import 'package:local_pay/infrastructure/auth/auth_repository.dart';
import 'package:local_pay/infrastructure/firebase/user_repository.dart';
import 'package:local_pay/infrastructure/firebase/wallet_repository.dart';

final authentication = Provider<Authentication>((ref) {
  final auth = ref.watch(authRepository);
  final users = ref.watch(userRepository);
  final wallets = ref.watch(walletRepository);
  return Authentication(auth, users, wallets);
});

class Authentication {
  Authentication(
      this._authentication, this._userRepository, this._walletrepository) {
    _authentication.authStateChanges().listen(_onAuthStateChanges);
    _authentication.userChanges().listen(_onUserChanges);
  }

  final FirebaseAuth _authentication;
  final IUserRepository _userRepository;
  final IWalletRepository _walletrepository;
  bool _isSignedIn = false;
  User? _currentUser;

  bool get isSignedIn => _isSignedIn;
  User? get currentUser => _currentUser;

  void _onAuthStateChanges(User? user) {
    _isSignedIn = user != null;
  }

  void _onUserChanges(User? user) {
    _currentUser = user;
  }

  Future<void> signIn(AuthCredential authCredential) async {
    final credential =
        await _authentication.signInWithCredential(authCredential);
    final uid = credential.user!.uid;
    if (await _userRepository.getById(uid) == null) {
      final user = domain_user.User(
        id: credential.user!.uid,
        name: credential.user?.displayName ?? "",
      );
      final wallet = Wallet(owner: user.id);
      await _userRepository.save(user);
      await _walletrepository.save(wallet);
    }
  }

  Future<void> signUp({String userName = ""}) async {
    final credential = await _authentication.signInAnonymously();
    final user = domain_user.User(id: credential.user!.uid, name: userName);
    final wallet = Wallet(owner: user.id);
    await _userRepository.save(user);
    await _walletrepository.save(wallet);
  }

  Future<void> signOut() async {
    await _authentication.signOut();
  }
}
