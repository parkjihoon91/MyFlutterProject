import 'package:flutter/material.dart';
import 'package:tdd_basic/models/favorites.dart';
import 'package:tdd_basic/screens/favorites_screen.dart';
import 'package:tdd_basic/screens/home_screen.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const TestingApp());
}

final _router = GoRouter(routes: [
  GoRoute(
    path: HomePage.routeName,
    builder: (context, state) {
      return const HomePage();
    },
    routes: [
      GoRoute(
        path: FavoritesPage.routeName,
        builder: (context, state) {
          return const FavoritesPage();
        },
      ),
    ],
  ),
]);

class TestingApp extends StatelessWidget {
  const TestingApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Favorites>(
      create: (_) => Favorites(),
      child: MaterialApp.router(
        title: 'Testing Sample',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true,
        ),
        routerConfig: _router,
      ),
    );
  }
}
