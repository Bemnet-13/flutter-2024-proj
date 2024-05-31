// ignore_for_file: use_super_parameters, prefer_const_constructors

import 'package:flutter/material.dart';

class AvatarListEntry extends StatelessWidget {
  final currentAvatar;
  const AvatarListEntry({
    Key? key,
    required this.currentAvatar,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.all(12),
          child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: SizedBox(
                  width: 100,
                  height: 100,
                  child: Image(
                    image: AssetImage(currentAvatar.avatarPic),
                    fit: BoxFit.cover,
                  ))),
        ),
        SizedBox(width: 16), // Add spacing between image and text
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              currentAvatar.avatarName,
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            Text(currentAvatar.avatarClub),
            Padding(
              padding: EdgeInsets.only(top: 6),
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                onPressed: () {},
                child: const Text('Edit'),
              ),
            )
          ],
        ),
      ],
    );
  }
}
