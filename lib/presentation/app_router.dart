import 'package:auto_route/auto_route.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:local_pay/presentation/bottom_navigation_page.dart';
import 'package:local_pay/presentation/pages/home/home_page.dart';

part 'app_router.gr.dart';

final router = Provider<AppRouter>((ref) => AppRouter());

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
  ];
}