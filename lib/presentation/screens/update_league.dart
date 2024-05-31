import 'package:FantasyE/presentation/widgets/appbar.dart';
import 'package:FantasyE/presentation/widgets/buttons.dart';
import 'package:FantasyE/presentation/widgets/drawer.dart';

import '../widgets/colors.dart';
import '../widgets/custom_field.dart';
import 'package:flutter/material.dart';

class UpdateLeagueScreen extends StatelessWidget {
  const UpdateLeagueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: CustomAppbar(
          title: 'Update League',
          icon: Icons.menu,
        ),
        drawer: DrawerMenu(),
        body: Padding(
          padding: EdgeInsets.symmetric(vertical: 30, horizontal: 18),
          child: Center(
            child: Column(
              children: [
                SizedBox(
                  height: 48,
                ),
                Text(
                  'UPDATE LEAGUE',
                  style: TextStyle(
                    color: CustomColors.primaryText,
                    fontSize: 24,
                  ),
                  textAlign: TextAlign.center,
                ), // will be edited with custom text widget
                SizedBox(
                  height: 25,
                ),
                CustomTextFIeld(
                  label: 'New League Name',
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CustomButton(
                        'Done', CustomColors.accent, '/player_dashboard')
                  ],
                )
              ],
            ),
          ),
        ));
  }
}
