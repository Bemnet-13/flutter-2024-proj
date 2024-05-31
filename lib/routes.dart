import 'package:FantasyE/presentation/screens/league/create_league.dart';
import 'package:FantasyE/presentation/screens/league/league_details.dart';
import 'package:FantasyE/presentation/screens/league/manage_league.dart';
import 'package:FantasyE/presentation/screens/league/update_league.dart';
import 'package:FantasyE/presentation/screens/welcome_screen.dart';
import 'package:go_router/go_router.dart';
import 'presentation/screens/add_avatar.dart';
import 'presentation/screens/admin_manage_avatars.dart';
import 'presentation/screens/dashboard/admin_dashboard.dart';
import 'presentation/screens/create_avatar.dart';
import 'presentation/screens/create_team.dart';
import 'presentation/screens/faq.dart';
import 'presentation/screens/league/join_league.dart';
import 'presentation/screens/leaderboard_rank.dart';
import 'presentation/screens/league/leagues.dart';
import 'presentation/screens/auth/login/login.dart';
import 'presentation/screens/auth/signup/signup.dart';
import 'presentation/screens/auth/login/login_form_player.dart';
import 'presentation/screens/auth/manage_account/edit_account.dart';
import 'presentation/screens/auth/login/login_form_admin.dart';
import 'presentation/screens/auth/auth_splash.dart';
import 'presentation/screens/manage_team.dart';
import 'presentation/screens/league/my_leagues.dart';
import 'presentation/screens/dashboard/player_dashboard.dart';

class Routes {
  final router = GoRouter(
    initialLocation: '/splash',
    routes: [
      // Authentication Routes
      GoRoute(
        name: 'splash',
        path: '/splash',
        builder: (context, state) => const AuthSplash(),
      ),
      GoRoute(
        name: 'welcome',
        path: '/welcome',
        builder: (context, state) => const WelcomeScreen(),
      ),
      GoRoute(
        name: 'login',
        path: '/login',
        builder: (context, state) => const LoginScreen(),
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

      // Dashboard Routes
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

      // Leagues routes
      GoRoute(
        name: 'leagues',
        path: '/leagues',
        builder: (context, state) => const LeaguesScreen(),
      ),
      GoRoute(
        name: 'league_details',
        path: '/league_details',
        builder: (context, state) => const LeagueDetailsScreen(),
      ),
      GoRoute(
        name: 'manage_leagues',
        path: '/manage_leagues',
        builder: (context, state) => const ManageLeagueScreen(),
      ),
      GoRoute(
        name: 'join_league',
        path: '/join_league',
        builder: (context, state) => const JoinLeagueScreen(),
      ),
      GoRoute(
        name: 'my_leagues',
        path: '/my_leagues',
        builder: (context, state) => const MyLeaguesScreen(),
      ),
      GoRoute(
        name: 'create_league',
        path: '/create_league',
        builder: (context, state) => const CreateLeagueScreen(),
      ),
      GoRoute(
        name: 'update_league',
        path: '/update_league',
        builder: (context, state) => const UpdateLeagueScreen(),
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
        name: 'leaderboard_rank',
        path: '/leaderboard_rank',
        builder: (context, state) => const LeaderboardRankScreen(),
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
      GoRoute(
        name: 'faq',
        path: '/faq',
        builder: (context, state) => const FaqScreen(),
      ),
    ],
  );
}
