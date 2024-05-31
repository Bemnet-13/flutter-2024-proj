import 'package:flutter/material.dart';
import '../../../widgets/colors.dart';
import 'login_choice.dart';
import 'package:FantasyE/application/auth/auth_form/auth_bloc.dart';
import '../../../../injection.dart';
import 'login_form_admin.dart';
import 'login_choice.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: CustomColors.lightPrimary,
      body: LoginChoice(),
    );
  }
}                          