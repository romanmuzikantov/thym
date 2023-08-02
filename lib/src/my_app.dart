import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:thym/pages/home_page.dart';
import '../theme/color_schemes.dart';

final _router = GoRouter(initialLocation: '/', routes: [
  GoRoute(
      name: 'home', path: '/', builder: (contex, state) => const HomePage()),
]);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Thym',
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: lightColorScheme,
          fontFamily: 'DaiBanna'),
      darkTheme: ThemeData(
          useMaterial3: true,
          colorScheme: darkColorScheme,
          fontFamily: 'DaiBanna'),
      themeMode: ThemeMode.system,
      routerConfig: _router,
    );
  }
}
