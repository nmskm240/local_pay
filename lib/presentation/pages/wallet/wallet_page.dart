// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
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
      body: WalletBalanceCard(
        amount: 0,
        onPressedDetail: () {},
        onPressedAdd: () {},
      ),
    );
  }
}
