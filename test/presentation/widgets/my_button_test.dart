import 'package:FantasyE/presentation/widgets/buttons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('CustomButton renders with correct child text',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
            body: CustomButton(
          'Test Button',
          Colors.black,
          '/',
        )),
      ),
    );

    expect(find.text('Test Button'), findsOneWidget);
    final textFinder = find.text('Test Button');
    expect(textFinder, findsOneWidget);

    final textWidget = tester.widget<Text>(textFinder);
    expect(textWidget.style!.color, const Color(0xff000000));
    expect(textWidget.style!.fontWeight, FontWeight.bold);
    expect(textWidget.style!.fontSize, 25.0);
  });
}


//Count it in