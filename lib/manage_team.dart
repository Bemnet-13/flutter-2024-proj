import 'dart:ui';

import 'package:faq/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'widgets/circular_display.dart';
import 'widgets/player_tile.dart';
import 'widgets/buttons.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Manage Team',
        theme: ThemeData(
          fontFamily: 'Poppins',
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: Scaffold(
          appBar: AppBar(
            backgroundColor: primary,
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
                    child: Text("TOTAL SCORE", style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold
                    ),
                    ),
                  ),
                  CircleDisplay(radius: 60, text: score.toString()),
                  const SizedBox(
                    width: 350.0,
                    child: Divider(
                        thickness: 2.0
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 40.0, vertical: 20.0),
                        child: Text("MY PLAYERS",
                        style: TextStyle(
                          fontSize: 17.0,
                          fontWeight: FontWeight.bold,
                        ),
                        ),
                      ),
                      const SizedBox(
                        height: 25.0,
                      ),
                      PlayerTile("Kevin De Bruyne", "Man City"),
                      PlayerTile("Mo Salah", "Liverpool"),
                      const SizedBox(
                        height: 25.0,
                      ),
                      RightAlignedButton("Add Players", CustomColors.accent),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        )
    );
  }
}