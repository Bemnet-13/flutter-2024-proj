import 'package:FantasyE/application/avatar/avatar_manager/avatar_manager_bloc.dart';
import 'package:FantasyE/application/avatar/avatar_watcher/avatar_watcher_bloc.dart';
import 'package:FantasyE/presentation/widgets/appbar.dart';
import 'package:FantasyE/presentation/widgets/drawer.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:FantasyE/domain/avatar/avatar.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../injection.dart';
import 'package:flutter/material.dart';

class ManageAvatarScreen extends StatelessWidget {
  const ManageAvatarScreen({super.key});

  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<AvatarWatcherBloc>(
          create: (BuildContext context) => getIt<AvatarWatcherBloc>()
            ..add(const AvatarWatcherEvent.getAllAvatars()),
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
    return BlocConsumer<AvatarWatcherBloc, AvatarWatcherState>(
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
                        "No Avatars Yet",
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
                  title: "Manage Avatars",
                  icon: Icons.menu,
                ),
                drawer: DrawerMenu(),
                body: ListView.separated(
                    itemBuilder: ((context, index) {
                      final avatar = state.avatars[index];
                      return AvatarTile(avatar: avatar);
                    }),
                    separatorBuilder: (BuildContext context, int index) =>
                        const Divider(),
                    itemCount: state.avatars.length),
                floatingActionButton: FloatingActionButton.large(
                    child: Icon(Icons.add),
                    onPressed: () {
                      context.go('/create_avatar');
                    }),
              );
            });
      },
    );
  }
}

class AvatarTile extends StatelessWidget {
  final Avatar avatar;
  const AvatarTile({required this.avatar});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
        context.read<AvatarManagerBloc>().add(AvatarManagerEvent.avatarSelected(
            avatar.avatarName,
            avatar.id,
            avatar.avatarScore,
            avatar.avatarClub));
        print(avatar.avatarName.getOrCrash());
        print(avatar.id.getOrCrash());
        context.go('/avatar_details');
      },
      leading: const Icon(
        Icons.table_chart_outlined,
        size: 50,
      ),
      title: Text(
        avatar.avatarName.getOrCrash(),
        style: const TextStyle(fontSize: 24),
      ),
    );
  }
}
