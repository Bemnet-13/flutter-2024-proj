import 'package:FantasyE/application/auth/auth_bloc.dart';
import 'package:FantasyE/application/auth/bloc/auth_logic_bloc.dart';
import 'package:flutter/material.dart';
import '../../../widgets/colors.dart';
import '../../../../injection.dart';
import 'signup_form.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: CustomColors.lightPrimary,
        body: MultiBlocProvider(
          providers: [
            BlocProvider<LoginFormBloc>(
              create: (BuildContext context) => getIt<LoginFormBloc>(),
            ),
            BlocProvider<SignupFormBloc>(
              create: (BuildContext context) => getIt<SignupFormBloc>(),
            ),
            BlocProvider<AuthLogicBloc>(
              create: (BuildContext context) => getIt<AuthLogicBloc>(),
            ),
          ],
          child: SignUpForm(),
        ));
  }
}
