import 'package:flutter/material.dart';
import 'data/avatar_list_data.dart';
import 'entries/admin_avatar_list_entry.dart';

class AdminAvatarListBody extends StatelessWidget {
  final AvatarListData avatarListData;
  const AdminAvatarListBody({super.key, required this.avatarListData});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 100, vertical: 25),
          child: Center(
            child: Text(
              'Avatars Management',
              style: TextStyle(fontSize: 24),
              textAlign: TextAlign.center,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: avatarListData.avatarList.length,
            itemBuilder: (context, index) {
              return AvatarListEntry(
                currentAvatar: avatarListData.avatarList[index],
              );
            },
          ),
        ),
      ],
    );
  }
}
