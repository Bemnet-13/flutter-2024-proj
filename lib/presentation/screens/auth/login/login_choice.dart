import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../widgets/colors.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/text_styles.dart';
import '../../../widgets/text_fields.dart';
import '../../../widgets/chips.dart';
import 'package:flutter/material.dart';
import '../../../../application/auth/auth_bloc.dart';

class LoginChoice extends StatelessWidget {
  const LoginChoice({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
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
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomButton('USER', CustomColors.divider, '/login_user'),
              CustomButton('GAME ADMIN', CustomColors.divider, '/login_admin'),
            ],
          )
        ],
      ),
    );
  }
}
