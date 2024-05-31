import 'package:FantasyE/application/auth/auth_logic/auth_logic_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../widgets/drawer.dart';
import '../../widgets/appbar.dart';
import '../../widgets/cards.dart';

class PlayerDashboardScreen extends StatelessWidget {
  const PlayerDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'Player Dashboard',
        icon: Icons.menu,
      ),
      drawer: const DrawerMenu(),
      body: BlocListener<AuthLogicBloc, AuthLogicState>(
        listener: (context, state) {},
        child: const Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: DashboardCard(
                navigateTo: '/create_team',
                buttonText: 'Create New Team',
                imagePath: 'assets/leg.png',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: DashboardCard(
                navigateTo: '/manage_team',
                buttonText: 'Manage Teams',
                imagePath: 'assets/leg.png',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
              child: DashboardCard(
                navigateTo: '/leagues',
                buttonText: 'Leagues',
                imagePath: 'assets/cale.png',
              ),
            ),
            SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
    );
  }
}
