import 'package:flutter/material.dart';
import 'login_choice.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      // backgroundColor: CustomColors.lightPrimary,
      body: LoginChoice(),
    );
  }
}
