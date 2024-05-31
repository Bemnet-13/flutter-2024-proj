import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/auth/auth_form/auth_bloc.dart';

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
          validator: (_) => isLoggingIn
              ? context.read<LoginFormBloc>().state.emailAddress.value.fold(
                    (f) => f.maybeMap(
                      invalidEmail: (_) => 'Invalid Email',
                      orElse: () => null,
                    ),
                    (_) => null,
                  )
              : context.read<SignupFormBloc>().state.emailAddress.value.fold(
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
            validator: (_) => isLoggingIn
                ? context.read<LoginFormBloc>().state.password.value.fold(
                      (f) => f.maybeMap(
                        shortPassword: (_) => 'Short Password',
                        orElse: () => null,
                      ),
                      (_) => null,
                    )
                : context.read<SignupFormBloc>().state.password.value.fold(
                      (f) => f.maybeMap(
                        shortPassword: (_) => 'Short Password',
                        orElse: () => null,
                      ),
                      (_) => null,
                    )),
      ),
    );
  }
}

class NameFieldEntry extends StatelessWidget {
  static const text = 'NAME';
  static const IconData icon = Icons.person_2_rounded;
  static const isObscured = false;
  const NameFieldEntry();

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
          onChanged: (value) => context
              .read<SignupFormBloc>()
              .add(SignupFormEvent.nameChanged(value)),
          validator: (_) =>
              context.read<SignupFormBloc>().state.name.value.fold(
                    (f) => f.maybeMap(
                      invalidName: (_) => 'Short Name',
                      orElse: () => null,
                    ),
                    (_) => null,
                  ),
        ),
      ),
    );
  }
}

class FieldEntry extends StatelessWidget {
  final String text;
  final IconData icon;
  final void Function(String value)? onchangedCallback;
  final String Function(String? _)? validatorCallback;
  final String initialValue;
  //  = Icons.person_2_rounded;
  final bool isObscured;
  const FieldEntry(
      {required this.text,
      required this.initialValue,
      required this.icon,
      required this.isObscured,
      required this.validatorCallback,
      required this.onchangedCallback});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: 20.0),
      child: SizedBox(
        width: 350,
        child: TextFormField(
          decoration: InputDecoration(
            labelText: text,
            prefixIcon: Align(
              widthFactor: 1.0,
              heightFactor: 1.0,
              child: Icon(
                icon,
              ),
            ),
          ),
          initialValue: initialValue,
          obscureText: isObscured,
          onChanged: onchangedCallback,
          validator: validatorCallback,
        ),
      ),
    );
  }
}
