import 'package:FantasyE/application/auth/auth_logic/auth_logic_bloc.dart';
import 'package:FantasyE/presentation/widgets/text_styles.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:FantasyE/injection.dart';

class DrawerMenu extends StatelessWidget {
  const DrawerMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AuthLogicBloc>(),
      child: BlocProvider.of<AuthLogicBloc>(context).state ==
              const AuthLogicState.authenticatedAsAdmin()
          ? const DrawerAdmin()
          : const DrawerPlayer(),
    );
  }
}

class DrawerAdmin extends StatelessWidget {
  const DrawerAdmin({
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
            leading: Icon(Icons.dashboard_rounded),
            title: const Text(
              'AdminBoard',
              style: StyledText.drawerTestStyle,
            ),
            onTap: () {
              context.go('/admin_dashboard');
            },
          ),
          ListTile(
            leading: Icon(FontAwesomeIcons.personCircleCheck),
            title: const Text(
              'Manage Avatars',
              style: StyledText.drawerTestStyle,
            ),
            onTap: () {
              context.go('/admin_manage_avatars');
            },
          ),
          ListTile(
            leading: Icon(Icons.table_chart_sharp),
            title: const Text(
              'Manage Leagues',
              style: StyledText.drawerTestStyle,
            ),
            onTap: () {
              context.go('/leagues');
            },
          ),
          const SizedBox(
            height: 15,
          ),
          const Divider(),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: Icon(Icons.question_answer),
            title: const Text(
              'FAQ',
              style: StyledText.drawerTestStyle,
            ),
            onTap: () {
              context.pushNamed('faq');
            },
          ),
          ListTile(
            leading: Icon(Icons.person_2_rounded),
            title: const Text(
              'Edit my account',
              style: StyledText.drawerTestStyle,
            ),
            onTap: () {
              context.pushNamed('edit_account');
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: const Text(
              'Log out',
              style: StyledText.drawerTestStyle,
            ),
            onTap: () {
              _showMyDialog(context);
            },
          )
        ],
      ),
    );
  }
}

class DrawerPlayer extends StatelessWidget {
  const DrawerPlayer({
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
            leading: Icon(Icons.question_answer),
            title: const Text(
              'FAQ',
              style: StyledText.drawerTestStyle,
            ),
            onTap: () {
              context.pushNamed('faq');
            },
          ),
          ListTile(
            leading: Icon(Icons.person_2_rounded),
            title: const Text(
              'Manage account',
              style: StyledText.drawerTestStyle,
            ),
            onTap: () {
              context.pushNamed('edit_account');
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: const Text(
              'Log out',
              style: StyledText.drawerTestStyle,
            ),
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
        title: const Text(
          'Log Out',
          style: TextStyle(fontWeight: FontWeight.w800),
        ),
        content: const SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                'Would you like to log out of Fantasy Ethiopia?',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
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