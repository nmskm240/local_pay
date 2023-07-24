// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:local_pay/application/service/authentication_service.dart';
import 'package:local_pay/presentation/bottom_navigation_page.dart';
import 'package:local_pay/presentation/pages/home/home_page.dart';
import 'package:local_pay/presentation/pages/sign_in/sign_in_page.dart';

part 'app_router.gr.dart';

final router = Provider<AppRouter>((ref) {
  final auth = ref.watch(authentication);
  return AppRouter(auth);
});

@AutoRouterConfig()
class AppRouter extends _$AppRouter implements AutoRouteGuard {
  AppRouter(this._auth) : super();

  final AuthenticationService _auth;

  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: SignInRoute.page,
          initial: !_auth.isSignedIn,
        ),
        AutoRoute(
          page: HomeRoute.page,
          initial: _auth.isSignedIn,
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
