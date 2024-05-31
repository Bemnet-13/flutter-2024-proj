import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../widgets/colors.dart';
import '../../../widgets/buttons.dart';
import '../../../widgets/text_styles.dart';
import '../../../widgets/text_fields.dart';
import '../../../widgets/chips.dart';
import 'package:flutter/material.dart';
import '../../../../application/auth/auth_bloc.dart';

class SignUpForm extends StatelessWidget {
  const SignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SignupFormBloc, SignupFormState>(
        listener: (context, state) {
      state.authFailureOrSuccessOption.fold(
        () {},
        (either) => either.fold(
          (failure) {},
          (_) {},
        ),
      );
    }, builder: (context, state) {
      return SingleChildScrollView(
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
                      "Signup",
                      style: StyledText.loginStyle,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0),
                    child: RoleChoiceChip(),
                  ),
                  const SizedBox(
                    height: 15.0,
                  ),
                  Form(
                    autovalidateMode: state.showErrorMessages
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                    child: Column(
                      children: [
                        NameFieldEntry(),
                        EmailFieldEntry(isLoggingIn: false),
                        PasswordFieldEntry(isLoggingIn: false),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  RegisterButton("SIGNUP ", CustomColors.divider,'/login', false),
                  const BottomText(
                      "Already have an account?", "Login", '/login')
                ],
              ),
            ),
          ],
        ),
      );
    });
  }
}
