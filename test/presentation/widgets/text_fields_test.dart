import 'package:FantasyE/presentation/widgets/text_fields.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FieldEntry displays text and icon correctly',
      (WidgetTester tester) async {
    const testText = 'Username';
    const testIcon = Icons.account_circle;

    String mockValidator(String? value) {
      return "yes";
    }

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: FieldEntry(
            text: testText,
            icon: testIcon,
            isObscured: false,
            validatorCallback: mockValidator,
            onchangedCallback: (value) => print(value),
          ),
        ),
      ),
    );

    // Find the label text
    final labelFinder = find.text(testText);
    expect(tester.widget<Text>(labelFinder).data, testText);

    // Find the icon
    final iconFinder = find.byIcon(testIcon);
    expect(tester.widget<Icon>(iconFinder).icon, testIcon);
  });
}
