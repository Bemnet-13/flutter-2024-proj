import 'package:FantasyE/presentation/widgets/text_styles.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Smoke test for widgets', (WidgetTester tester) async {
    await tester.pumpWidget(const StyledText());
    await tester
        .pumpWidget(const BottomText('Test Left', 'Test Button', '/test'));
  });
}
