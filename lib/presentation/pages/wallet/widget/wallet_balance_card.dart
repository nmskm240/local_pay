// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:intl/intl.dart';

class WalletBalanceCard extends StatelessWidget {
  const WalletBalanceCard({
    super.key,
    required this.amount,
    required this.onPressedDetail,
    required this.onPressedAdd,
  });

  final int amount;
  final void Function() onPressedDetail;
  final void Function() onPressedAdd;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          ListTile(
            title: const Text("Balance"),
            leading: const FaIcon(FontAwesomeIcons.moneyBill1Wave),
            trailing: TextButton(
              onPressed: onPressedDetail,
              child: const Text("Detail"),
            ),
          ),
          ListTile(
            title: Text(
              "Available amount",
              style: Theme.of(context).textTheme.bodySmall,
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  NumberFormat.simpleCurrency().format(amount),
                  style: Theme.of(context).textTheme.bodyLarge,
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: onPressedAdd,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
