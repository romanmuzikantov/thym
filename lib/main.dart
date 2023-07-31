import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:thym/pages/home_page.dart';

final _router = GoRouter(initialLocation: '/', routes: [
  GoRoute(
      name: 'home', path: '/', builder: (contex, state) => const HomePage()),
]);

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Thym',
      theme: ThemeData(useMaterial3: true),
      darkTheme: ThemeData.dark(useMaterial3: true),
      themeMode: ThemeMode.system,
      routerConfig: _router,
    );
  }
}
