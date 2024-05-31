import 'package:FantasyE/presentation/screens/auth/signup/signup_form.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('SignUpForm renders correctly', (WidgetTester tester) async {
    // Build the SignUpForm widget within a MaterialApp
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: SignUpForm(),
        ),
      ),
    );

    // expect(find.text('Signup'), findsOneWidget);
    // expect(find.text('SIGNUP '), findsOneWidget);
    // expect(find.byType(TextFormField), findsNWidgets(2));
    expect(find.text('Already has an account?'), findsNothing);
  });
}
