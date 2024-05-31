import 'package:flutter/material.dart';
import 'data/league_list_data.dart';
import 'entries/league_list_entry.dart';

class LeagueListBody extends StatelessWidget {
  final LeagueListData? leagueFromConstructor;
  const LeagueListBody({super.key, this.leagueFromConstructor});

  @override
  Widget build(context) {
    final league = leagueFromConstructor != null
        ? leagueFromConstructor!.leaguelistdata
        : LeagueListData().leaguelistdata;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 25),
          child: Center(
            child: Text(
              'Join Leagues to compete with fellow contestants!',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Expanded(
            child: ListView.builder(
                itemCount: league.length,
                itemBuilder: (context, index) {
                  return LeagueListEntry(
                    index: index,
                    leaguelist: league,
                  );
                })),
      ],
    );
  }
}
