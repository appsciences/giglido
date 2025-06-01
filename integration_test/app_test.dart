import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
import 'package:giglido/main.dart' as app;

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('Todo App Tests', () {
    testWidgets('App starts in idle mode', (tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Verify app root is present
      expect(find.byKey(const Key('app_root')), findsOneWidget);
      
      // Verify we're in idle mode
      expect(find.byKey(const Key('idle_mode_indicator')), findsOneWidget);
    });

    testWidgets('Can enter composition mode with C key', (tester) async {
      app.main();
      await tester.pumpAndSettle();

      // Simulate pressing 'C' key
      await tester.sendKeyEvent(LogicalKeyboardKey.keyC);
      await tester.pumpAndSettle();

      // Verify we're in composition mode
      expect(find.byKey(const Key('composition_mode')), findsOneWidget);
    });

    // Add more test cases for other features
  });
} 