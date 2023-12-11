import 'package:flutter/material.dart';
import 'package:flutter_training/router.dart';
import 'package:go_router/go_router.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    final router = GoRouter(
      routes: $appRoutes,
      initialLocation: const SplashRoute().location,
    );
    return MaterialApp.router(
      routerConfig: router,
    );
  }
}
