// Project imports:
import 'package:local_pay/domain/wallet/wallet.dart';

abstract class IWalletRepository {
  Future<Wallet?> getById(String id);
  Future<void> save(Wallet wallet);
}
