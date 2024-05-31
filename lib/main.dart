import 'package:FantasyE/application/auth/auth_logic/auth_logic_bloc.dart';
import 'package:FantasyE/application/auth/manage_account/manage_account_bloc.dart';
import 'package:FantasyE/application/avatar/avatar_manager/avatar_manager_bloc.dart';
import 'package:FantasyE/application/league/league_manager/league_manager_bloc.dart';
import 'package:FantasyE/presentation/widgets/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:injectable/injectable.dart';
import 'routes.dart';
import 'injection.dart';

void main() {
  configureInjection(Environment.dev);
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
              const AuthLogicEvent.authCheckRequested(),
            ),
        ),
        BlocProvider(create: (context) => getIt<LeagueManagerBloc>()),
        BlocProvider(create: (context) => getIt<AvatarManagerBloc>()),
        BlocProvider(create: (context) => getIt<ManageAccountBloc>()),
      ],
      child: MaterialApp.router(
        title: 'Fantasy Ethiopia',
        routerConfig: router,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
          useMaterial3: true,
          fontFamily: 'Poppins',
          appBarTheme: const AppBarTheme(
            backgroundColor: CustomColors.primary,
            centerTitle: true,
            iconTheme: IconThemeData(color: Colors.white),
            actionsIconTheme: IconThemeData(color: Colors.white),
          ),
        ),
      ),
    );
  }
}