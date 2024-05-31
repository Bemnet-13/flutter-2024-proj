// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../widgets/appbar.dart';
import '../widgets/admin_avatar_list.dart';

class AdminManageAvatarsScreen extends StatelessWidget {
  const AdminManageAvatarsScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        title: "Avatars",
        icon: Icons.menu,
      ),
      body: AdminAvatarListBody(),
    );
  }
}
