// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import '../widgets/league_list_body.dart';

class JoinLeagueScreen extends StatelessWidget {
  const JoinLeagueScreen({super.key});

  @override
  Widget build(context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: "Leagues",
        icon: Icons.menu,
      ),
      body: LeagueListBody(),
    );
  }
}
