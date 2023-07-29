// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:local_pay/presentation/pages/wallet/wallet_page_notifier.dart';
import 'package:local_pay/presentation/pages/wallet/widget/wallet_balance_card.dart';

@RoutePage()
class WalletPage extends StatelessWidget {
  const WalletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Wallet"),
      ),
      body: const _Body(),
    );
  }
}

class _Body extends ConsumerWidget {
  const _Body() : super();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(walletPageNotifierProvider);
    final notifier = ref.watch(walletPageNotifierProvider.notifier);
    return state.when(
      error: (error, stacktrace) {
        return ErrorWidget(error);
      },
      loading: () {
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
      data: (data) {
        return WalletBalanceCard(
          amount: data.walletbalance,
          onPressedDetail: notifier.onPressedDetail,
          onPressedAdd: notifier.onPressedAdd,
        );
      },
    );
  }
}
