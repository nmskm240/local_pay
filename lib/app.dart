// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

// Project imports:
import 'package:local_pay/presentation/app_router.dart' as app_router;

class App extends ConsumerWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final router = ref.watch(app_router.router);
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        debugPrint(snapshot.toString());
        if (snapshot.connectionState == ConnectionState.active) {
          FlutterNativeSplash.remove();
          return MaterialApp.router(
            title: 'Local pay',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(seedColor: Colors.white70),
              useMaterial3: true,
            ),
            routerConfig: router.config(),
          );
        }
        return const Center(
          child: CircularProgressIndicator(),
        );
      },
    );
  }
}
