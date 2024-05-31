import 'dart:io';
import 'package:FantasyE/application/auth/auth_logic/auth_logic_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class AuthSplash extends StatelessWidget {
  const AuthSplash({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<AuthLogicBloc, AuthLogicState>(
      listener: (context, state) {
        WidgetsBinding.instance.addPostFrameCallback((_) {
          state.maybeMap(
            initial: (_) {
              context.go('/welocome');
            },
            authenticatedAsAdmin: (_) {
              context.go('/admin_dashboard');
            },
            authenticatedAsPlayer: (_) {
              context.go('/player_dashboard');
            },
            unauthenticated: (_) {
              context.go('/welcome');
            },
            orElse: () => context.go('/welcome'),
          );
        });
      },
      child: Scaffold(
        body:Container(
          width: double.infinity,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircularProgressIndicator(),
              Text(
                'Please Wait...',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              )
            ],
          ),
        ),
      ),
    );
  }
}
