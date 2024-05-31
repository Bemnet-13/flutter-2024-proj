import 'package:FantasyE/presentation/widgets/appbar.dart';
import 'package:FantasyE/presentation/widgets/drawer.dart';
import 'package:flutter/material.dart';
import 'package:FantasyE/presentation/widgets/cards.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(title: "Avatars", icon: Icons.menu),
      drawer: DrawerMenu(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 20,
          ),
          Expanded(
            child: DashboardCard(
              navigateTo: '/create_avatar',
              buttonText: 'Create New Avatar',
              imagePath: 'assets/cale.png',
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Expanded(
            child: DashboardCard(
              navigateTo: '/manage_avatar',
              buttonText: 'Manage Avatars',
              imagePath: 'assets/cale.png',
            ),
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
