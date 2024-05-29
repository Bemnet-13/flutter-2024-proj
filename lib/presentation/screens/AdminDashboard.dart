import 'package:FantasyE/presentation/widgets/appbar.dart';
import 'package:FantasyE/presentation/widgets/buttons.dart';
import 'package:flutter/material.dart';
import '../widgets/colors.dart';
import '../widgets/cards.dart';

class AdminDashboardScreen extends StatelessWidget {
  const AdminDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(title: 'Adminboard'),
      body: SingleChildScrollView(
        child: SizedBox(
            width: double.infinity,
            child: Column(
              children: [
                SizedBox(
                  height: 20,
                ),
                DashboardCard(
                    navigateTo: '/create_avatar',
                    buttonText: 'Create New Avatar',
                    imagePath: 'assets/avat.png',
                    imageWidth: 100,
                    imageHeight: 100),

                SizedBox(
                  height: 10,
                ),
                DashboardCard(
                    navigateTo: '/admin_manage_avatars',
                    buttonText: 'Manage Avatars',
                    imagePath: 'assets/herevat.png',
                    imageWidth: 110,
                    imageHeight: 110),


                SizedBox(
                  height: 10,
                ),
                DashboardCard(
                    navigateTo: '/leagues',
                    buttonText: 'Manage Leagues',
                    imagePath: 'assets/cale.png',
                    imageWidth: 100,
                    imageHeight: 100),
              ],
            ),
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 245, 245, 245),
    );
  }
}
