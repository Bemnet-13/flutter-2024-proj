import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../../../widgets/colors.dart';

class LoginChoice extends StatefulWidget {
  const LoginChoice({super.key});

  @override
  State<LoginChoice> createState() => _LoginChoiceState();
}

class _LoginChoiceState extends State<LoginChoice> {
  int _value = 0;
  static const List<String> roles = ['PLAYER', 'GAME ADMIN'];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Image.asset(
            './assets/Fantasy_Ethiopia_Logo_Transparent.png',
            width: 350,
            height: 350,
          ),
          const Text(
            "Login to Fantasy Ethiopia As",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            height: 155,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Wrap(
                  direction: Axis.vertical,
                  spacing: 20.0,
                  children: List<Widget>.generate(
                    roles.length,
                    (int index) {
                      return ChoiceChip(
                        label: Text(
                          roles[index],
                          style: TextStyle(
                              fontSize: 30, fontWeight: FontWeight.w900),
                        ),
                        selected: _value == index,
                        onSelected: (bool selected) {
                          setState(() {
                            _value = selected ? index : 0;
                          });
                        },
                      );
                    },
                  ).toList(),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          TextButton(
              onPressed: () => _value == 0
                  ? context.go('/login_user')
                  : context.go('/login_admin'),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'NEXT',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.w900,
                        color: CustomColors.darkPrimary),
                  ),
                  Icon(Icons.arrow_forward_sharp)
                ],
              ))
        ],
      ),
    );
  }
}
