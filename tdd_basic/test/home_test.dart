import 'package:flutter/material.dart';
import 'package:tdd_basic/models/favorites.dart';
import 'package:tdd_basic/screens/home_screen.dart';
import 'package:provider/provider.dart';

// import 'package:test/test.dart';
import 'package:flutter_test/flutter_test.dart';

Widget createHomeScreen() => ChangeNotifierProvider<Favorites>(
      create: (_) => Favorites(),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );

void main() {
  group('Home Page Widget Tests', () {

    testWidgets('Testing if ListView shows up', (widgetTester) async {
      await widgetTester.pumpWidget(createHomeScreen());
      expect(find.byType(ListView), findsOneWidget);
    });

    testWidgets('Testing Scrolling', (widgetTester) async {
      await widgetTester.pumpWidget(createHomeScreen()); // 위젯 불러오기
      expect(find.text('Item 0'), findsOneWidget);
      await widgetTester.fling( // 스크롤
        find.byType(ListView),
        const Offset(0, -200),
        3000,
      );
      await widgetTester.pumpAndSettle(); // 비동기 처리 기다리기
      expect(find.text('Item 0'), findsNothing);
    });

    testWidgets('Testing IconButtons', (tester) async {
      await tester.pumpWidget(createHomeScreen());
      expect(find.byIcon(Icons.favorite), findsNothing);
      await tester.tap(find.byIcon(Icons.favorite_border).first); // 클릭
      await tester.pumpAndSettle(const Duration(seconds: 1));
      expect(find.text('Added to favorites.'), findsOneWidget);
      expect(find.byIcon(Icons.favorite), findsWidgets);
      await tester.tap(find.byIcon(Icons.favorite).first);
      await tester.pumpAndSettle(const Duration(seconds: 1));
      expect(find.text('Removed from favorites.'), findsOneWidget);
      expect(find.byIcon(Icons.favorite), findsNothing);
    });

  });
}
