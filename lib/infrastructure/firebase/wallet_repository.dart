// Package imports:
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:local_pay/domain/wallet/i_wallet_repository.dart';
import 'package:local_pay/domain/wallet/wallet.dart';

final walletRepository = Provider<WalletRepository>((ref) {
  return WalletRepository(FirebaseFirestore.instance);
});

class WalletRepository implements IWalletRepository {
  const WalletRepository(this._firestore);

  final FirebaseFirestore _firestore;

  @override
  Future<Wallet?> getById(String id) async {
    final snapshot = await _firestore.collection("wallets").doc(id).get();
    final data = snapshot.data();
    if (data == null) {
      return null;
    }
    return Wallet.fromJson(data);
  }

  @override
  Future<void> save(Wallet wallet) async {
    await _firestore
        .collection("wallets")
        .doc(wallet.owner)
        .set(wallet.toJson());
  }
}
