import 'package:flutter/material.dart';
import 'data/leader_board_list_data.dart';

class LeaderBoardListBody extends StatelessWidget {
  final LeaderBoardListData? leaderboard;
  const LeaderBoardListBody({this.leaderboard, super.key});

  @override
  Widget build(context) {
    final leaguelist = leaderboard == null
        ? LeaderBoardListData().leaderboardlist
        : leaderboard!.leaderboardlist;
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Table(
          // border:TableBorder.all(),
          children: [
            const TableRow(
              decoration: BoxDecoration(
                  border: Border(
                bottom: BorderSide(color: Colors.black, width: 2),
              )),
              children: [
                TableCell(
                    child: Padding(
                  padding: EdgeInsets.all(16),
                  child: Center(
                      child: Text(
                    'Rank',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 32,
                    ),
                  )),
                )),
                Padding(
                  padding: EdgeInsets.all(16),
                  child: Center(
                    child: Text('Player',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        )),
                  ),
                ),
                Padding(
                    padding: EdgeInsets.all(16),
                    child: Center(
                      child: Text(
                        'Score',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 32,
                        ),
                      ),
                    )),
              ],
            ),
            ...List.generate(
                leaguelist.length,
                (index) => TableRow(
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            color: Colors.grey,
                            width: 1,
                          ),
                        ),
                      ),
                      children: [
                        Padding(
                            padding: const EdgeInsets.all(16),
                            child: Center(
                                child: Text(
                              (index + 1).toString(),
                              style: const TextStyle(
                                color: Colors.grey,
                                fontSize: 24,
                              ),
                            ))),
                        Padding(
                            padding: const EdgeInsets.all(8),
                            child: Center(
                                child: Text(
                              leaguelist[index].playername,
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 24),
                            ))),
                        Padding(
                            padding: const EdgeInsets.all(8),
                            child: Center(
                                child: Text(
                              leaguelist[index].score.toString(),
                              style: const TextStyle(
                                  color: Colors.grey, fontSize: 24),
                            ))),
                      ],
                    )),
          ],
        ));
  }
}
