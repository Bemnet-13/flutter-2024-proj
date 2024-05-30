import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import '../widgets/cards.dart';

class PlayerDashboardScreen extends StatelessWidget {
  const PlayerDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(title:  'Player DashBoard'),
      body: SingleChildScrollView(
        child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                DashboardCard(
                    navigateTo: '/create_team',
                    buttonText: 'Create New Team',
                    imagePath: 'assets/leg.png',
                    imageWidth: 100,
                    imageHeight: 100),
                SizedBox(
                  height: 10,
                ),
                DashboardCard(
                    navigateTo: '/manage_team',
                    buttonText: 'Manage Teams',
                    imagePath: 'assets/leg.png',
                    imageWidth: 110,
                    imageHeight: 110),
                SizedBox(
                  height: 10,
                ),
                DashboardCard(
                    navigateTo: '/leagues',
                    buttonText: 'Leagues',
                    imagePath: 'assets/cale.png',
                    imageWidth: 100,
                    imageHeight: 100),
              ],
            ),
        ),
      ),
      backgroundColor: Color.fromARGB(255, 245, 245, 245),
    );
  }
}
