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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      routerConfig: _router,
    );
  }
}
