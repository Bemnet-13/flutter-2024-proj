import 'package:FantasyE/application/auth/auth_logic/auth_logic_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../widgets/colors.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/text_styles.dart';
import '../../../widgets/text_fields.dart';
import '../../../../injection.dart';
import '../../../../application/auth/auth_bloc.dart';

class LoginAdmin extends StatelessWidget {
  const LoginAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<LoginFormBloc>(
          create: (BuildContext context) => getIt<LoginFormBloc>()
            ..add(
              LoginFormEvent.roleSelected('ADMIN'),
            ),
        ),
        BlocProvider<SignupFormBloc>(
          create: (BuildContext context) => getIt<SignupFormBloc>(),
        ),
        BlocProvider<AuthLogicBloc>(
          create: (BuildContext context) => getIt<AuthLogicBloc>(),
        ),
      ],
      child: LoginFormAdmin(),
    );
  }
}

class LoginFormAdmin extends StatelessWidget {
  const LoginFormAdmin({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginFormBloc, LoginFormState>(
        listener: (context, state) {
      state.authFailureOrSuccessOption
      .fold(
        () {},
        (either) => either.fold(
          (failure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: failure.map(
                  cancelledByUser: (_) => const Text('Cancelled'),
                  serverError: (_) => const Text('Server Error'),
                  emailAlreadyInUse: (_) =>
                      const Text('Email Already In Use. Try another email'),
                  invalidEmailAndPasswordCombination: (_) =>
                      const Text('Invalid Email or Password'),
                  invalidRoleUsedInLogin: (_) =>
                      const Text('Invalid Role. Use defined these roles'),
                ),
              ),
            );
          },
          (_) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Login Successful'),
                action: SnackBarAction(
                  label: 'Go To Dashboard',
                  onPressed: () {
                    context.go('/admin_dashboard');
                  },
                ),
              ),
            );
          },
        ),
      );
    }, builder: (context, state) {
      return Scaffold(
        backgroundColor: CustomColors.scaffoldBackground,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                './assets/Fantasy_Ethiopia_Logo_Transparent.png',
                width: 350,
                height: 350,
              ),
              Container(
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(40),
                      topRight: Radius.circular(40)),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(30, 20, 0, 0),
                      child: Text(
                        "Login as an Admin",
                        style: StyledText.loginStyle,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.fromLTRB(30, 10, 0, 0),
                      child: Text(
                        "Please sign in to continue",
                        style: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 20.0),
                      ),
                    ),
                    const SizedBox(
                      height: 15.0,
                    ),
                    Form(
                      autovalidateMode: state.showErrorMessages
                          ? AutovalidateMode.always
                          : AutovalidateMode.disabled,
                      child: const Column(
                        children: [
                          EmailFieldEntry(
                            isLoggingIn: true,
                          ),
                          PasswordFieldEntry(
                            isLoggingIn: true,
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 20.0,
                    ),
                    AuthButton("LOGIN ", CustomColors.darkPrimary,
                        '/admin_dashboard', true, () {
                      context.read<LoginFormBloc>().add(
                            const LoginFormEvent
                                .loginWithEmailAndPasswordPressed(),
                          );
                      context.read<AuthLogicBloc>().add(
                            const AuthLogicEvent.loginRequestedAsAdmin(),
                          );
                    }),
                    const BottomText(
                        "Don't you have an account?", "Sign Up", '/signup')
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    });
  }
}
