import 'package:FantasyE/application/avatar/avatar_manager/avatar_manager_bloc.dart';
import 'package:FantasyE/domain/leagues/value_objects.dart';
import 'package:FantasyE/presentation/widgets/appbar.dart';
import 'package:FantasyE/presentation/widgets/drawer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:FantasyE/domain/avatar/avatar.dart';
import 'package:flutter/material.dart';
import 'package:FantasyE/injection.dart';
import 'package:go_router/go_router.dart';

class AvatarDetailsScreen extends StatelessWidget {
  const AvatarDetailsScreen();

  @override
  Widget build(BuildContext context) {
    return AvatarDetails();
  }
}

class AvatarDetails extends StatelessWidget {
  const AvatarDetails();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AvatarManagerBloc, AvatarManagerState>(
      listener: (context, state) {},
      builder: (context, state) {
        print(state);
        final avatarName = state.avatarName.getOrCrash();
        final avatarScore = state.avatarScore.getOrCrash();
        final avatarClub = state.avatarClub.getOrCrash();
        final firstLetter = avatarName[0];
        return Scaffold(
          appBar: const CustomAppbar(title: "Avatar Details", icon: Icons.menu),
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
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        'Avatar Name',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        avatarName,
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        'Avatar Club',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        avatarClub,
                        style: const TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w900),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        'Avatar Score',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w900),
                      ),
                      Text(
                        avatarScore as String,
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
                            context.read<AvatarManagerBloc>().add(
                                AvatarManagerEvent.avatarSelected(
                                    state.avatarName,
                                    state.uniqueId,
                                    state.avatarScore,
                                    state.avatarClub));
                            context.go('/update_avatar');
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
                          context.read<AvatarManagerBloc>().add(
                              const AvatarManagerEvent.deleteAvatarTriggered());
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
