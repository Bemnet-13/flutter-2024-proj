import 'package:FantasyE/presentation/screens/welcome_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:FantasyE/application/auth/auth_logic/auth_logic_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'presentation/screens/add_avatar.dart';
import 'presentation/screens/admin_manage_avatars.dart';
import 'presentation/screens/admin_dashboard.dart';
import 'presentation/screens/create_avatar.dart';
import 'presentation/screens/create_team.dart';
import 'presentation/screens/faq.dart';
import 'presentation/screens/join_league.dart';
import 'presentation/screens/leaderboard_rank.dart';
import 'presentation/screens/leagues.dart';
import 'presentation/screens/auth/login/login.dart';
import 'presentation/screens/auth/signup/signup.dart';
import 'presentation/screens/auth/login/login_form_player.dart';
import 'presentation/screens/auth/manage_account/edit_account.dart';
import 'presentation/screens/auth/login/login_form_admin.dart';
import 'presentation/screens/auth/auth_splash.dart';
import 'presentation/screens/manage_team.dart';
import 'presentation/screens/my_leagues.dart';
import 'presentation/screens/player_dashboard.dart';
import 'presentation/screens/choice.dart';

class Routes {
  final router = GoRouter(
    initialLocation: '/splash',
    // redirect: (context, state) {
    // final authState = context.read<AuthLogicBloc>().state;
    // print(authState);

    // if (authState is Unauthenticated && state.fullPath != '/login') {
    // return '/login';
    // } else if (authState is AuthenticatedAsAdmin &&
    // (state.fullPath == 'login')) {
    // print('My redirect');
    // return '/admin_dashboard';
    // } else if (authState is AuthenticatedAsPlayer &&
    // (state.fullPath == 'login')) {
    // return '/player_dashboard';
    // }
    // return null;
    // },
    routes: [
      GoRoute(
        name: 'choice',
        path: '/choice',
        builder: (context, state) => const Choice(),
      ),
      GoRoute(
        name: 'login',
        path: '/login',
        builder: (context, state) => const LoginScreen(),
      ),
      GoRoute(
        name: 'welcome',
        path: '/welcome',
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        name: 'splash',
        path: '/splash',
        builder: (context, state) => const AuthSplash(),
      ),
      GoRoute(
        name: 'login_admin',
        path: '/login_admin',
        builder: (context, state) => const LoginAdmin(),
      ),
      GoRoute(
        name: 'login_user',
        path: '/login_user',
        builder: (context, state) => const LoginPlayer(),
      ),
      GoRoute(
        name: 'signup',
        path: '/signup',
        builder: (context, state) => const SignupScreen(),
      ),
      GoRoute(
        name: 'edit_account',
        path: '/edit_account',
        builder: (context, state) => const EditAccount(),
      ),
      GoRoute(
        name: 'admin_dashboard',
        path: '/admin_dashboard',
        builder: (context, state) => const AdminDashboardScreen(),
      ),
      GoRoute(
        name: 'player_dashboard',
        path: '/player_dashboard',
        builder: (context, state) => const PlayerDashboardScreen(),
      ),
      GoRoute(
        name: 'leagues',
        path: '/leagues',
        builder: (context, state) => const LeaguesScreen(),
      ),
      GoRoute(
        name: 'join_league',
        path: '/join_league',
        builder: (context, state) => const JoinLeagueScreen(),
      ),
      GoRoute(
        name: 'create_team',
        path: '/create_team',
        builder: (context, state) => const CreateTeamScreen(),
      ),
      GoRoute(
        name: 'manage_team',
        path: '/manage_team',
        builder: (context, state) => const ManageTeamScreen(),
      ),
      GoRoute(
        name: 'my_leagues',
        path: '/my_leagues',
        builder: (context, state) => const MyLeaguesScreen(),
      ),
      GoRoute(
        name: 'leaderboard_rank',
        path: '/leaderboard_rank',
        builder: (context, state) => const LeaderboardRankScreen(),
      ),
      GoRoute(
        name: 'faq',
        path: '/faq',
        builder: (context, state) => const FaqScreen(),
      ),
      GoRoute(
        name: 'create_avatar',
        path: '/create_avatar',
        builder: (context, state) => const CreateAvatarScreen(),
      ),
      GoRoute(
        name: 'add_avatar',
        path: '/add_avatar',
        builder: (context, state) => const AddAvatarScreen(),
      ),
      GoRoute(
        name: 'admin_manage_avatars',
        path: '/admin_manage_avatars',
        builder: (context, state) => const AdminManageAvatarsScreen(),
      ),
    ],
  );
}

// routes: {
  // '/choice': (context) => const Choice(),
  // '/login': (context) => const LoginScreen(),
  // '/login_admin': (context) => const LoginAdmin(),
  // '/login_user': (context) => const LoginPlayer(),
  // '/signup': (context) => const SignupScreen(),
  // '/admin_dashboard': (context) => const AdminDashboardScreen(),
  // '/player_dashboard': (context) => const PlayerDashboardScreen(),
  // '/leagues': (context) => const LeaguesScreen(),
  // '/join_league': (context) => const JoinLeagueScreen(),
  // '/create_team': (context) => const CreateTeamScreen(),
  // '/manage_team': (context) => const ManageTeamScreen(),
  // '/my_leagues': (context) => const MyLeaguesScreen(),
  // '/leaderboard_rank': (context) => const LeaderboardRankScreen(),
  // '/faq': (context) => const FaqScreen(),
  // '/create_avatar': (context) => const CreateAvatarScreen(),
  // '/add_avatar': (context) => const AddAvatarScreen(),
  // '/admin_manage_avatars': (context) => const AdminManageAvatarsScreen(),
// },