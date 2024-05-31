import 'package:FantasyE/application/auth/auth_logic/auth_logic_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:FantasyE/injection.dart';

class AuthSplashScreen extends StatelessWidget {
  const AuthSplashScreen();
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<AuthLogicBloc>()..add(const AuthLogicEvent.authCheckRequested()),
      child: AuthSplash(),
    );
  }
}

class AuthSplash extends StatelessWidget {
  const AuthSplash();
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
        body: Container(
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
