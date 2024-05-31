import 'package:FantasyE/presentation/widgets/entries/league_list_entry.dart';
import 'package:FantasyE/presentation/widgets/league_list_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

// Mock LeagueListData class
class MockLeagueListData extends Mock {
  List<dynamic> get leaguelistdata => [];
}

void main() {
  testWidgets('LeagueListBody displays title and LeagueListEntry widgets',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: LeagueListBody(),
        ),
      ),
    );

    expect(find.text('Join Leagues to compete with fellow contestants!'),
        findsOneWidget);

    expect(find.byType(LeagueListEntry),
        findsAtLeast(3)); // Adjust based on mock data length
  });
}
