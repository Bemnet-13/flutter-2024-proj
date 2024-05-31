// ignore_for_file: prefer_const_constructors

import 'package:FantasyE/domain/avatar/avatar.dart';
import 'package:FantasyE/presentation/widgets/entries/avatar_list_entry.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../widgets/appbar.dart';



class AdminManageAvatarsScreen extends StatelessWidget {
  const AdminManageAvatarsScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: Appbar(title: "Avatars"),
      body: AvatarListBody(),
    );
  }
}




class AvatarListBody extends StatelessWidget {
  const AvatarListBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ManageAvatarBloc, ManageAvatarState>(
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
    final addAvatarBloc = context.read<ManageAvatarBloc>();

    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(12),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: const SizedBox(
              width: 100,
              height: 100,
              child: Icon(Icons.man_3_outlined),
            ),
          ),
        ),
        SizedBox(width: 16), // Add spacing between image and text
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              currentAvatar.name.getOrCrash(), 
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(currentAvatar.club.getOrCrash()), 
            
            Row(
              children: [
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
                  addAvatarBloc.add(ManageAvatarEvent.updateStarted(currentAvatar));
                },
                child: const Text('Update Avatar'),
              ),
            ),
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
                  addAvatarBloc.add(ManageAvatarEvent.deleteStarted(currentAvatar));
                },
                child: const Text('Delete Avatar'),
              ),
            ),
            ])
          ],
        ),
      ],
    );
  }
}

