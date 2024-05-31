import 'package:FantasyE/application/league/league_manager/league_manager_bloc.dart';
import 'package:FantasyE/presentation/widgets/appbar.dart';
import 'package:FantasyE/presentation/widgets/drawer.dart';
import 'package:FantasyE/presentation/widgets/text_styles.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
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
        final leagueName = state.leagueName.getOrCrash();
        final numberOfMembers = state.members.length;
        final firstLetter = leagueName[0];
        return Scaffold(
          appBar: const CustomAppbar(title: "League Details", icon: Icons.menu),
          drawer: const DrawerMenu(),
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
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Expanded(
                        child: Column(
                          children: [
                            Text('LEAGUE NAME', style: StyledText.userStyle),
                            Text('MEMBERS', style: StyledText.userStyle),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          children: [
                            Text(leagueName, style: StyledText.userStyle),
                            Text('$numberOfMembers',
                                style: StyledText.userStyle),
                          ],
                        ),
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
                          icon: const Icon(
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
                        icon: const Icon(
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
