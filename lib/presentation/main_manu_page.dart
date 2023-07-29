// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import 'package:local_pay/presentation/app_router.dart';

@RoutePage()
class MainMenuPage extends StatelessWidget {
  const MainMenuPage({super.key});

  static final Map<PageRouteInfo, NavigationDestination> tab = {
    const HomeRoute(): const NavigationDestination(
      icon: Icon(Icons.home),
      label: "Home",
    ),
    const NotificationRoute(): const NavigationDestination(
      icon: Icon(Icons.notifications),
      label: "Notification",
    ),
    const PaymentRoute(): const NavigationDestination(
      icon: Icon(Icons.payment),
      label: "Pay",
    ),
    const WalletRoute(): const NavigationDestination(
      icon: Icon(Icons.wallet),
      label: "Wallet",
    ),
    const AccountRoute(): const NavigationDestination(
      icon: Icon(Icons.person),
      label: "Account",
    ),
  };

  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: tab.keys.toList(),
      builder: (context, child) {
        final tabsRouter = context.tabsRouter;
        return Scaffold(
          body: child,
          bottomNavigationBar: NavigationBar(
            selectedIndex: tabsRouter.activeIndex,
            destinations: tab.values.toList(),
            onDestinationSelected: (value) {
              tabsRouter.setActiveIndex(value);
            },
          ),
        );
      },
    );
  }
}
