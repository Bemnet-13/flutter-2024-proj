import 'package:FantasyE/application/auth/bloc/auth_logic_bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import '../widgets/cards.dart';

class PlayerDashboardScreen extends StatelessWidget {
  const PlayerDashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(title: 'Player DashBoard'),
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
      backgroundColor: Color.fromARGB(255, 245, 245, 245),
    );
  }
}
