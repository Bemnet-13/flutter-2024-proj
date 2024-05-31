// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'colors.dart';

class Appbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  // ignore: use_super_parameters
  const Appbar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.grey,
      leading: const Icon(Icons.menu, color: Colors.white),
      title: Center(
        child: Text(
          title,
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      centerTitle: true,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final IconData icon;
  // ignore: use_super_parameters
  const CustomAppbar({
    Key? key,
    required this.title,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(color: Colors.white, fontWeight: FontWeight.w700),
      ),
      centerTitle: true,
      leading: Builder(
        builder: (context) {
          return IconButton(
            icon: Icon(icon),
            onPressed: () => icon == Icons.menu
                ? Scaffold.of(context).openDrawer()
                : context.pop(),
          );
        },
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}

class CustomBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const CustomBar({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Builder(
          builder: (context) => IconButton(
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                icon: const Icon(
                  Icons.menu,
                  color: CustomColors.lightPrimary,
                ),
              )),
      title: Text(
        title,
        style: const TextStyle(color: CustomColors.lightPrimary),
      ),
      centerTitle: true,
      backgroundColor: CustomColors.primary,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
