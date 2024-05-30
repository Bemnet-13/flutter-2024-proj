import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/auth/auth_bloc.dart';

class EmailFieldEntry extends StatelessWidget {
  static const text = 'EMAIL';
  static const IconData icon = Icons.email_outlined;
  static const isObscured = false;
  final bool isLoggingIn;
  const EmailFieldEntry({required this.isLoggingIn});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: SizedBox(
        width: 350,
        child: TextFormField(
          decoration: const InputDecoration(
            labelText: text,
            prefixIcon: Align(
              widthFactor: 1.0,
              heightFactor: 1.0,
              child: Icon(
                icon,
              ),
            ),
          ),
          obscureText: isObscured,
          onChanged: isLoggingIn
              ? (value) => context
                  .read<LoginFormBloc>()
                  .add(LoginFormEvent.emailChangedInLogin(value))
              : (value) => context
                  .read<SignupFormBloc>()
                  .add(SignupFormEvent.emailChanged(value)),
          validator: (_) =>
              context.read<SignupFormBloc>().state.emailAddress.value.fold(
                    (f) => f.maybeMap(
                      invalidEmail: (_) => 'Invalid Email',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        ),
      ),
    );
  }
}

class PasswordFieldEntry extends StatelessWidget {
  static const text = 'PASSWORD';
  static const IconData icon = Icons.lock_open_outlined;
  static const isObscured = true;
  final bool isLoggingIn;
  const PasswordFieldEntry({required this.isLoggingIn});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: SizedBox(
        width: 350,
        child: TextFormField(
          decoration: const InputDecoration(
            labelText: text,
            prefixIcon: Align(
              widthFactor: 1.0,
              heightFactor: 1.0,
              child: Icon(
                icon,
              ),
            ),
          ),
          obscureText: isObscured,
          onChanged: isLoggingIn
              ? (value) => context
                  .read<LoginFormBloc>()
                  .add(LoginFormEvent.passwordChangedInLogin(value))
              : (value) => context
                  .read<SignupFormBloc>()
                  .add(SignupFormEvent.passwordChanged(value)),
          validator: (_) =>
              context.read<SignupFormBloc>().state.password.value.fold(
                    (f) => f.maybeMap(
                      shortPassword: (_) => 'Short Password',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        ),
      ),
    );
  }
}
