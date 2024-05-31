import 'dart:ui';
import '../widgets/colors.dart';
import 'package:flutter/material.dart';
import '../widgets/circular_display.dart';
import '../widgets/player_tile.dart';
import '../widgets/buttons.dart';

class ManageTeamScreen extends StatelessWidget {
  const ManageTeamScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var score = 10;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: CustomColors.primary,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Icon(Icons.menu),
            Text('Team 1'),
            Text(" "),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50.0,
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "TOTAL SCORE",
                  style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
                ),
              ),
              CircleDisplay(radius: 60, text: score.toString()),
              const SizedBox(
                width: 350.0,
                child: Divider(thickness: 2.0),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding:
                        EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                    child: Text(
                      "MY PLAYERS",
                      style: TextStyle(
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 25.0,
                  ),
                  Expanded(child: PlayerTile("Kevin De Bruyne", "Man City")),
                  Expanded(child: PlayerTile("Mo Salah", "Liverpool")),
                  const SizedBox(
                    height: 25.0,
                  ),
                  RightAlignedButton(
                      "Add Players", CustomColors.accent, 'add_avatar'),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
