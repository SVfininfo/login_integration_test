import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:logintest2inastudio/main.dart' as app;

void main() {
  group('App Test', () {
    IntegrationTestWidgetsFlutterBinding.ensureInitialized();
    testWidgets('full app test', (tester) async{
      app.main();
      await tester.pumpAndSettle();
      final emailFormField = find.byType(TextFormField).first;
      final passwordFormField = find.byType(TextFormField).last;
      final loginButton = find.byType(ElevatedButton).last;
      await Future.delayed(const Duration(seconds: 3));
      await tester.enterText(emailFormField, 'vamshi1@fininfocom.com');
      await Future.delayed(const Duration(seconds: 3));
      await tester.enterText(passwordFormField, 'epos1234');
      await Future.delayed(const Duration(seconds:3));
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 3));
      await tester.tap(loginButton);
      await Future.delayed(const Duration(seconds: 3));
      await tester.pumpAndSettle();
      await Future.delayed(const Duration(seconds: 3));
      });
    });
  }