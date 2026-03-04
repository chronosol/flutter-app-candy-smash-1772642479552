import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'features/game/presentation/screens/game_screen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final GoRouter appRouter = GoRouter(
      routes: <GoRoute>[
        GoRoute(
          path: '/',
          builder: (context, state) => const GameScreen(),
        ),
      ],
    );

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue,
        brightness: Brightness.light,
      ),
      darkTheme: ThemeData(
        useMaterial3: true,
        brightness: Brightness.dark,
      ),
    );
  }
}
