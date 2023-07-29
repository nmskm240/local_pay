// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:local_pay/presentation/main_manu_page.dart';
import 'package:local_pay/presentation/pages/account/account_page.dart';
import 'package:local_pay/presentation/pages/home/home_page.dart';
import 'package:local_pay/presentation/pages/notification/notification_page.dart';
import 'package:local_pay/presentation/pages/payment/payment_page.dart';
import 'package:local_pay/presentation/pages/sign_in/sign_in_page.dart';
import 'package:local_pay/presentation/pages/wallet/wallet_page.dart';
import '../application/service/auth_service.dart';

part 'app_router.gr.dart';

final router = Provider<AppRouter>((ref) {
  final auth = ref.watch(authentication);
  return AppRouter(auth);
});

@AutoRouterConfig()
class AppRouter extends _$AppRouter implements AutoRouteGuard {
  AppRouter(this._auth) : super();

  final Authentication _auth;

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SignInRoute.page,
          initial: !_auth.isSignedIn,
        ),
        AutoRoute(
          page: MainMenuRoute.page,
          initial: _auth.isSignedIn,
          children: [
            AutoRoute(
              page: HomeRoute.page,
              initial: true,
            ),
            AutoRoute(
              page: NotificationRoute.page,
            ),
            AutoRoute(
              page: PaymentRoute.page,
            ),
            AutoRoute(
              page: WalletRoute.page,
            ),
            AutoRoute(
              page: AccountRoute.page,
            ),
          ],
        ),
      ];

  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) {
    if (_auth.isSignedIn || resolver.route.name == SignInRoute.name) {
      resolver.next();
    } else {
      resolver.redirect(const SignInRoute());
    }
  }
}
