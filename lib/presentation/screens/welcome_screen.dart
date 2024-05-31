import 'package:FantasyE/presentation/widgets/colors.dart';
import 'package:FantasyE/presentation/widgets/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/welcome_screen_background.png'), // Replace with your image asset path
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              const Text(
                'FANTASY ETHIOPIA',
                style: StyledText.fantasyEthiopiaText,
                textAlign: TextAlign.center,
              ),
              const Column(
                children: [
                  Text(
                    "Draft.",
                    style: StyledText.welcomeScreenStyle,
                  ),
                  Text(
                    "Play",
                    style: StyledText.welcomeScreenStyle,
                  ),
                  Text(
                    "Dominate!",
                    style: StyledText.welcomeScreenStyle,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "Victory Starts Here!",
                style: StyledText.welcomeScreenStyle,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(
                    onPressed: () => context.go('/signup'),
                    child: const Text(
                      "SIGNUP",
                      style: StyledText.welcomeScreenBottomText,
                    ),
                  ),
                  TextButton(
                      onPressed: () => context.go('/login'),
                      child: const Text(
                        "LOGIN",
                        style: StyledText.welcomeScreenBottomText,
                      )),
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
