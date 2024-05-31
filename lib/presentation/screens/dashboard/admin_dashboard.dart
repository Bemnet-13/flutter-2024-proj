import 'package:FantasyE/presentation/widgets/appbar.dart';
import 'package:flutter/material.dart';
import 'package:FantasyE/presentation/widgets/drawer.dart';
import '../../widgets/cards.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(
        title: 'Adminboard',
        icon: Icons.menu,
      ),
      drawer: DrawerMenu(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          SizedBox(
            height: 20,
          ),
          DashboardCard(
            navigateTo: '/create_avatar',
            buttonText: 'Create New Avatar',
            imagePath: 'assets/avat.png',
          ),
          SizedBox(
            height: 10,
          ),
          DashboardCard(
            navigateTo: '/admin_manage_avatars',
            buttonText: 'Manage Avatars',
            imagePath: 'assets/herevat.png',
          ),
          SizedBox(
            height: 10,
          ),
          DashboardCard(
            navigateTo: '/manage_leagues',
            buttonText: 'Manage Leagues',
            imagePath: 'assets/cale.png',
          ),
          SizedBox(
            height: 20,
          ),
        ],
      ),
      backgroundColor: Color.fromARGB(255, 245, 245, 245),
    );
  }
}