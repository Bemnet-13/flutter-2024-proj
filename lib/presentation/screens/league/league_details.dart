import 'package:FantasyE/application/league/league_manager/league_manager_bloc.dart';
import 'package:FantasyE/domain/leagues/value_objects.dart';
import 'package:FantasyE/presentation/widgets/appbar.dart';
import 'package:FantasyE/presentation/widgets/drawer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:FantasyE/domain/leagues/league.dart';
import 'package:flutter/material.dart';
import 'package:FantasyE/injection.dart';
import 'package:go_router/go_router.dart';

class LeagueDetailsScreen extends StatelessWidget {
  const LeagueDetailsScreen();

  @override
  Widget build(BuildContext context) {
    return LeagueDetails();
  }
}

class LeagueDetails extends StatelessWidget {
  const LeagueDetails();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LeagueManagerBloc, LeagueManagerState>(
      listener: (context, state) {},
      builder: (context, state) {
        print(state);
        final leagueName = state.leagueName.getOrCrash();
        final numberOfMembers = state.members.length;
        final firstLetter = leagueName[0];
        return Scaffold(
          appBar: CustomAppbar(title: "League Details", icon: Icons.menu),
          drawer: DrawerMenu(),
          body: Card.outlined(
            clipBehavior: Clip.hardEdge,
            child: InkWell(
              splashColor: Colors.blue.withAlpha(30),
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  CircleAvatar(
                    radius: 60,
                    child: Text(
                      firstLetter,
                      style: const TextStyle(
                          fontSize: 40, fontWeight: FontWeight.w900),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        'LEAGUE NAME',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        leagueName,
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        'MEMBERS',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        '$numberOfMembers',
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TextButton.icon(
                          onPressed: () {
                            context.read<LeagueManagerBloc>().add(
                                LeagueManagerEvent.leagueSelected(
                                    state.leagueName,
                                    state.uniqueId,
                                    state.members));
                            context.go('/update_league');
                          },
                          icon: Icon(
                            Icons.edit,
                            size: 30,
                          ),
                          label: const Text(
                            'UPDATE',
                            style: TextStyle(
                                fontSize: 30, fontWeight: FontWeight.w900),
                          )),
                      TextButton.icon(
                        onPressed: () {
                          context.read<LeagueManagerBloc>().add(
                              const LeagueManagerEvent.deleteLeagueTriggered());
                          context.go('/manage_leagues');
                        },
                        icon: Icon(
                          Icons.delete_forever,
                          size: 30,
                          color: Colors.red,
                        ),
                        label: const Text("DELETE",
                            style: TextStyle(
                                fontSize: 30,
                                fontWeight: FontWeight.w900,
                                color: Colors.red)),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
