import 'package:flutter/material.dart';

class PlayerTile extends StatelessWidget {
  final String playerName;
  final String clubName;
  final TextStyle playerStyle = const TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
  );
  const PlayerTile(this.playerName, this.clubName, {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(children: [
      const Padding(
        padding: EdgeInsets.only(left: 30.0),
        child: CircleAvatar(
          radius: 50.0,
        ),
      ),
      Padding(
        padding: const EdgeInsets.fromLTRB(12.0, 15.0, 10.0, 0.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Player Name : $playerName",
                style: playerStyle,
              ),
              Text("Club Name : $clubName", style: playerStyle),
              IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete_rounded,
                    color: Colors.red,
                    size: 40.0,
                  ))
            ]),
      ),
    ]);
  }
}
