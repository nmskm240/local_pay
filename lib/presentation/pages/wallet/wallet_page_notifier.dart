// Package imports:
import 'package:riverpod_annotation/riverpod_annotation.dart';

// Project imports:
import 'package:local_pay/infrastructure/auth/auth_repository.dart';
import 'package:local_pay/infrastructure/firebase/wallet_repository.dart';
import 'package:local_pay/presentation/pages/wallet/wallet_page_state.dart';

part 'wallet_page_notifier.g.dart';

@riverpod
class WalletPageNotifier extends _$WalletPageNotifier {
  WalletPageNotifier() : super();

  @override
  FutureOr<WalletPageState> build() async {
    final user = ref.read(authRepository).currentUser;
    if (user == null) {
      return const WalletPageState(walletbalance: 0);
    }
    final wallet = await ref.read(walletRepository).getById(user.uid);
    if (wallet == null) {
      return const WalletPageState(walletbalance: 0);
    }
    return WalletPageState(walletbalance: wallet.balance);
  }

  Future<void> onPressedDetail() async {}

  Future<void> onPressedAdd() async {}
}
