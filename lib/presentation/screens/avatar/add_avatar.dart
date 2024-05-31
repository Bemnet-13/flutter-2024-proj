import 'package:FantasyE/domain/avatar/avatar.dart';
import 'package:FantasyE/injection.dart';
import 'package:flutter/material.dart';
import 'package:flutter/material.dart';
import '../../widgets/avatar_list_body.dart';
import '../../widgets/appbar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:FantasyE/application/avatar/add_avatar/add_avatar_bloc.dart';





class AddAvatarScreen extends StatelessWidget {
  const AddAvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AddAvatarBloc>(
      create: (context) {
        final bloc = getIt<AddAvatarBloc>();
        bloc.add(const AddAvatarEvent.addStarted());
        return bloc;
      },
      child: const Scaffold(
        appBar: Appbar(title: "Avatars"),
        body: AvatarListBody(),
      ),
    );
  }
}


class AvatarListBody extends StatelessWidget {
  const AvatarListBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddAvatarBloc, AddAvatarState>(
      builder: (context, state) {
        final avatarList = state.avatarList;
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 100, vertical: 25),
              child: Center(
                child: Text(
                  'Add avatars to your team and compete!',
                  style: TextStyle(fontSize: 24),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: avatarList.length,
                itemBuilder: (context, index) {
                  return AvatarListEntry(
                    index: index,
                    avatarList: avatarList,
                  );
                },
              ),
            ),
          ],
        );
      },
    );
  }
}




class AvatarListEntry extends StatelessWidget {
  final int index;
  final List<Avatar> avatarList;

  const AvatarListEntry({
    Key? key,
    required this.index,
    required this.avatarList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final currentAvatar = avatarList[index];
    final addAvatarBloc = context.read<AddAvatarBloc>();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(12),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: const SizedBox(
              width: 100,
              height: 100,
              child: Icon(Icons.man_3_outlined),
            ),
          ),
        ),
        SizedBox(width: 16), 
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              currentAvatar.avatarName.getOrCrash(), 
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(currentAvatar.avatarClub.getOrCrash()), 
            
              
              Padding(
              padding: const EdgeInsets.only(top: 6),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {
                  addAvatarBloc.add(const AddAvatarEvent.addStarted());
                },
                child: const Text('Add to Team'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}