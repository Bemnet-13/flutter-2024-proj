import 'package:FantasyE/application/auth/auth_users/auth_users_bloc.dart';
import 'package:FantasyE/application/auth/manage_account/manage_account_bloc.dart';
import 'package:FantasyE/domain/auth/user.dart';
import 'package:FantasyE/presentation/widgets/appbar.dart';
import 'package:FantasyE/presentation/widgets/drawer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../injection.dart';
import 'package:flutter/material.dart';

class UserAccountsScreen extends StatelessWidget {
  const UserAccountsScreen({super.key});

  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AuthUsersBloc>(
          create: (BuildContext context) =>
              getIt<AuthUsersBloc>()..add(const AuthUsersEvent.getAllUsers()),
        ),
      ],
      child: const LeaguesList(),
    );
  }
}

class LeaguesList extends StatelessWidget {
  const LeaguesList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AuthUsersBloc, AuthUsersState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.map(
            initial: (_) => const Scaffold(
                  body: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.hourglass_empty_rounded,
                        size: 50,
                      ),
                      Text(
                        "No Leagues Yet",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ),
            loadInProgress: (_) => const Center(
                  child: CircularProgressIndicator(),
                ),
            loadFailure: (_) => const Scaffold(
                  body: Column(
                    children: [
                      Icon(Icons.cloud_off, size: 50),
                      Text(
                        "Load Failure",
                        style: TextStyle(fontSize: 30),
                      ),
                    ],
                  ),
                ),
            loadSuccess: (state) {
              return Scaffold(
                appBar: const CustomAppbar(
                  title: "User Accounts",
                  icon: Icons.menu,
                ),
                drawer: DrawerMenu(),
                body: ListView.separated(
                    itemBuilder: ((context, index) {
                      final userDetails = state.users[index];
                      return UserTile(userDetails: userDetails);
                    }),
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    itemCount: state.users.length),
              );
            });
      },
    );
  }
}

class UserTile extends StatelessWidget {
  final UserDetails userDetails;
  const UserTile({required this.userDetails});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        context.read<ManageAccountBloc>().add(
            ManageAccountEvent.userAccountSelected(
                userDetails.id,
                userDetails.emailAddress,
                userDetails.isSuspended,
                userDetails.name,
                userDetails.role));
        context.go('/user_details');
      },
      leading: const Icon(
        Icons.person_2_rounded,
        size: 50,
      ),
      title: Text(
        userDetails.name.getOrCrash(),
        style: const TextStyle(fontSize: 24),
      ),
      subtitle: Text('Members : ${userDetails.role.getOrCrash()}'),
    );
  }
}
