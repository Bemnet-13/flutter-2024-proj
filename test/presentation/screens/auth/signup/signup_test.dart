import 'package:FantasyE/presentation/screens/auth/signup/signup.dart';
import 'package:FantasyE/presentation/widgets/buttons.dart';
import 'package:FantasyE/presentation/widgets/chips.dart';
import 'package:FantasyE/presentation/widgets/text_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('SignupScreen displays basic widgets',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: SignupScreen(),
      ),
    );

    expect(find.byType(SignupScreen), findsOneWidget);
    expect(find.text('Signup'), findsOneWidget);
    expect(find.byType(Image), findsOneWidget);
    expect(find.byType(RoleChoiceChip), findsOneWidget);
    expect(find.byType(NameFieldEntry), findsOneWidget);
    expect(find.byType(EmailFieldEntry), findsOneWidget);
    expect(find.byType(PasswordFieldEntry), findsOneWidget);
    expect(find.byType(AuthButton), findsOneWidget);
    expect(find.text("Already have an account?"), findsOneWidget);
    expect(find.text("Login"), findsOneWidget);
  });
}
