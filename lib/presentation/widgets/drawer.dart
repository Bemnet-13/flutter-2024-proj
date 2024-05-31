import 'package:FantasyE/application/auth/auth_logic/auth_logic_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    './assets/Fantasy_Ethiopia_Logo_Transparent.png'),
              ),
            ),
            child: Text(''),
          ),
          ListTile(
            title: const Text('FAQ'),
            onTap: () {
              context.pushNamed('faq');
            },
          ),
          ListTile(
            title: const Text('Manage account'),
            onTap: () {
              context.pushNamed('edit_account');
            },
          ),
          ListTile(
            title: const Text('Log out'),
            onTap: () {
              _showMyDialog(context);
            },
          )
        ],
      ),
    );
  }
}

void _showMyDialog(BuildContext context) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Log Out'),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text('Would you like to log out of Fantasy Ethiopia?'),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Cancel'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
          TextButton(
              onPressed: () {
                context.read<AuthLogicBloc>().add(AuthLogicEvent.loggedOut());
                context.go('/welcome');
              },
              child: const Text('OK'))
        ],
      );
    },
  );
}
