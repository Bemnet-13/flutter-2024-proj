import 'package:FantasyE/presentation/widgets/buttons.dart';
import 'package:FantasyE/presentation/widgets/colors.dart';
import 'package:flutter/widgets.dart';

import '../../widgets/appbar.dart';
import 'package:flutter/material.dart';

class MyAvatarsScreen extends StatelessWidget {
  MyAvatarsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'My Players',
        icon: Icons.menu,
      ),
      drawer: const Drawer(),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView.builder(
          itemCount: 6,
          itemBuilder: (context, index) => Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ListTile(
                  leading: Image.asset(
                    'assets/table.png',
                  ),
                  title:  Padding(
                    padding: const EdgeInsets.only(left: 24.0),
                    child: ListView(                      
                      children: [
                        
                      ],
                    ),
                  ),
                  subtitle: const Padding(
                    padding: EdgeInsets.only(left: 24.0, top: 15),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        CustomButton('Leaderboard', CustomColors.accent,
                            '/player_dashboard'),
                      ],
                    ),
                  ),
                ),
              ),
              const Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
