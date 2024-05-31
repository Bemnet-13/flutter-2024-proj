import 'package:FantasyE/application/league/league_manager/league_manager_bloc.dart';
import 'package:FantasyE/application/league/league_watcher/league_watcher_bloc.dart';
import 'package:FantasyE/presentation/widgets/appbar.dart';
import 'package:FantasyE/presentation/widgets/drawer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:FantasyE/domain/leagues/league.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../injection.dart';
import 'package:flutter/material.dart';

class ManageLeagueScreen extends StatelessWidget {
  const ManageLeagueScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LeagueWatcherBloc>(
          create: (BuildContext context) => getIt<LeagueWatcherBloc>()
            ..add(const LeagueWatcherEvent.getAllLeagues()),
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
    return BlocConsumer<LeagueWatcherBloc, LeagueWatcherState>(
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
                  title: "Manage Leagues",
                  icon: Icons.menu,
                ),
                drawer: DrawerMenu(),
                body: ListView.separated(
                    itemBuilder: ((context, index) {
                      final league = state.leagues[index];
                      return LeagueTile(league: league);
                    }),
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    itemCount: state.leagues.length),
                floatingActionButton: FloatingActionButton.large(
                    child: Icon(Icons.add),
                    onPressed: () {
                      context.go('/create_league');
                    }),
              );
            });
      },
    );
  }
}

class LeagueTile extends StatelessWidget {
  final League league;
  const LeagueTile({required this.league});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        context.read<LeagueManagerBloc>().add(
              LeagueManagerEvent.leagueSelected(
                  league.name, league.id, league.members),
            );
        context.go('/league_details');
      },
      leading: Icon(
        Icons.table_chart_outlined,
        size: 50,
      ),
      title: Text(
        league.name.getOrCrash(),
        style: const TextStyle(fontSize: 24),
      ),
      subtitle: Text('Members : ${league.members.length}'),
    );
  }
}
