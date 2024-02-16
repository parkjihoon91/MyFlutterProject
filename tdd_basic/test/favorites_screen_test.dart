
import 'package:flutter/material.dart';
import 'package:tdd_basic/models/favorites.dart';
import 'package:tdd_basic/screens/favorites_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_test/flutter_test.dart';

late Favorites favoritesList;

Widget createFavoritesScreen() => ChangeNotifierProvider<Favorites>(
  create: (_) {
    favoritesList = Favorites();
    return favoritesList;
  },
  child: const MaterialApp(
    home: FavoritesPage(),
  ),
);

void addItems() {
  for (int i = 0; i < 10; i+=2) {
    favoritesList.add(i);
  }
}

void main() {
  group('Favorites Page Widgets Tests', () {
    testWidgets('Test if ListView shows up', (widgetTester) async {
      await widgetTester.pumpWidget(createFavoritesScreen());
      addItems();
      await widgetTester.pumpAndSettle();
      expect(find.byType(ListView), findsOneWidget);
    });

    // lessThan -> 실제값이 예상값보다 작으면 true
    testWidgets('Testing Remove Button', (widgetTester) async {
      await widgetTester.pumpWidget(createFavoritesScreen());
      addItems();
      await widgetTester.pumpAndSettle();
      final totalItems = widgetTester.widgetList(find.byIcon(Icons.close)).length;
      await widgetTester.tap(find.byIcon(Icons.close).first);
      await widgetTester.pumpAndSettle();
      expect(widgetTester.widgetList(find.byIcon(Icons.close)).length, lessThan(totalItems));
      expect(find.text('Removed from favorites.'), findsOneWidget);
    });

  });
}