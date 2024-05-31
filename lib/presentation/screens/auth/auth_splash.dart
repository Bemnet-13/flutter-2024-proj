import 'dart:io';
import 'package:FantasyE/application/auth/bloc/auth_logic_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AuthSplash extends StatelessWidget {
  const AuthSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthLogicBloc, AuthLogicState>(
      listener: (context, state) {
        state.map(
          initial: (_) {
            context.go('/login');
          },
          authenticatedAsAdmin: (_) {
            context.go('/admin_dashboard');
          },
          authenticatedAsPlayer: (_) {
            context.go('/player_dashboard');
          },
          unauthenticated: (_) {
            context.go('/login');
          },
        );
      },
      child: Scaffold(
        body: Column(
          children: [
            Center(
              child: CircularProgressIndicator(),
            ),
            Text('Please Wait...')
          ],
        ),
      ),
    );
  }
}
