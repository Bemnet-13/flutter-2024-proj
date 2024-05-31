import 'package:FantasyE/presentation/widgets/player_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('PlayerTile displays player and club information',
      (WidgetTester tester) async {
    const testPlayerName = 'Lionel Messi';
    const testClubName = 'FC Barcelona';

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: PlayerTile(testPlayerName, testClubName),
        ),
      ),
    );

    final playerNameFinder = find.text('Player Name : $testPlayerName');
    expect(tester.widget<Text>(playerNameFinder).data,
        'Player Name : $testPlayerName');

    final clubNameFinder = find.text('Club Name : $testClubName');
    expect(
        tester.widget<Text>(clubNameFinder).data, 'Club Name : $testClubName');

    expect(find.byIcon(Icons.delete_rounded), findsOneWidget);
  });
}
