import 'package:FantasyE/presentation/widgets/admin_avatar_list.dart';
import 'package:FantasyE/presentation/widgets/data/avatar_list_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('AdminAvatarListBody renders correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: AdminAvatarListBody(
            avatarListData: AvatarListData(),
          ),
        ),
      ),
    );

    expect(find.text('Avatars Management'), findsOneWidget);

    expect(find.byType(ListView), findsOneWidget);

    expect(find.widgetWithText(Center, 'Avatars Management'), findsOneWidget);

    expect(
        find.byWidgetPredicate(
          (widget) =>
              widget is Padding &&
              widget.padding ==
                  const EdgeInsets.symmetric(horizontal: 100, vertical: 25),
        ),
        findsOneWidget);
  });
}
