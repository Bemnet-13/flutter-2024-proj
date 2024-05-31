// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import '../widgets/leader_board_list_body.dart';

class LeaderboardRankScreen extends StatelessWidget {
  const LeaderboardRankScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: "Leader Board",
        icon: Icons.menu,
      ),
      body: LeaderBoardListBody(),
    );
  }
}
