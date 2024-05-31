import 'package:FantasyE/presentation/widgets/leader_board_list_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('LeaderBoardListBody displays header and first data row',
      (WidgetTester tester) async {
    // Arrange: Create a sample LeaderBoardListData with some entries

    // Act: Build the LeaderBoardListBody with the data
    await tester.pumpWidget(const MaterialApp(home: LeaderBoardListBody()));

    expect(find.text('Rank'), findsOneWidget);

    expect(find.text('1'), findsOneWidget);

    expect(find.text('Test Player 1'), findsNothing);

    expect(find.text('100'), findsNothing);
  });
}
