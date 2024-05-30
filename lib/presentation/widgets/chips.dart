import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../application/auth/auth_bloc.dart';

class RoleChoiceChip extends StatelessWidget {
  static const String role1 = 'PLAYER';
  static const String role2 = 'ADMIN';
  static const roles = [role1, role2];

  @override
  Widget build(BuildContext context) {
    return ActionChoiceExample(roles: roles);
  }
}

class ActionChoiceExample extends StatelessWidget {
  final List<String> roles;
  ActionChoiceExample({required this.roles});

  @override
  Widget build(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;

    return BlocBuilder<SignupFormBloc, SignupFormState>(
      builder: (context, state) {
        return Container(
          height: 155,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('As', style: textTheme.headlineMedium),
              Wrap(
                spacing: 10.0,
                children: List<Widget>.generate(
                  roles.length,
                  (int index) {
                    return ChoiceChip(
                      label: Text(roles[index]),
                      selected: state.role.value == roles[index],
                      onSelected: (bool selected) {
                        print(selected);
                        if (selected) {
                          context
                              .read<SignupFormBloc>()
                              .add(SignupFormEvent.chipSelected(roles[index]));
                          print(state.role.value);
                        }
                      },
                    );
                  },
                ).toList(),
              ),
            ],
          ),
        );
      },
    );
  }
}
