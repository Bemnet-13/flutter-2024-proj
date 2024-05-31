// main.dart
import 'package:FantasyE/application/auth/bloc/auth_logic_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'routes.dart';
import 'injection.dart';

void main() {
  setup();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<AuthLogicBloc>()
            ..add(
              AuthLogicEvent.authCheckRequested(),
            ),
        )
      ],
      child: MaterialApp.router(
        title: 'Fantasy Ethiopia',
        routerConfig: routeSetup.router,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
          useMaterial3: true,
          fontFamily: 'Poppins',
        ),
      ),
    );
  }
}

Routes routeSetup = Routes();
