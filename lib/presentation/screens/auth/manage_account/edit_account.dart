import 'package:FantasyE/presentation/widgets/appbar.dart';
import 'package:FantasyE/presentation/widgets/buttons.dart';
import 'package:FantasyE/presentation/widgets/colors.dart';
import 'package:FantasyE/presentation/widgets/text_fields.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import '../../../../../injection.dart';
import 'package:FantasyE/application/auth/manage_account/manage_account_bloc.dart';
import 'package:go_router/go_router.dart';

class EditAccount extends StatelessWidget {
  const EditAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<ManageAccountBloc>(
          create: (BuildContext context) => getIt<ManageAccountBloc>(),
          child: EditAccountForm(),
        ),
      ],
      child: EditAccountForm(),
    );
  }
}

class EditAccountForm extends StatelessWidget {
  const EditAccountForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ManageAccountBloc, ManageAccountState>(
      listener: (context, state) {
        state.operationFailureOrSuccessOption.fold(
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
                    unsuccessfulDeletion: (_) =>
                        const Text('Unsuccessful deletion'),
                    invalidSuspension: (_) => const Text('Invalid suspension'),
                  ),
                ),
              );
            },
            (_) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: const Text('Account updated successfully'),
                  action: SnackBarAction(
                    label: 'Go To Dashboard',
                    onPressed: () {
                      context.go('/splash');
                    },
                  ),
                ),
              );
            },
          ),
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: CustomAppbar(
            title: "Edit Account",
            icon: Icons.arrow_back,
          ),
          body: Form(
            autovalidateMode: state.showErrorMessages
                ? AutovalidateMode.always
                : AutovalidateMode.disabled,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FieldEntry(
                  text: 'NAME',
                  icon: Icons.person,
                  isObscured: false,
                  validatorCallback: (_) =>
                      context.read<ManageAccountBloc>().state.name.value.fold(
                            (f) => f.maybeMap(
                              invalidName: (_) => 'Short Name',
                              orElse: () => 'Please fill out the Name field',
                            ),
                            (_) => 'Please fill out the name field',
                          ),
                  onchangedCallback: (value) => context
                      .read<ManageAccountBloc>()
                      .add(ManageAccountEvent.nameChanged(value)),
                ),
                FieldEntry(
                  text: 'EMAIL',
                  icon: Icons.email_outlined,
                  isObscured: false,
                  validatorCallback: (_) => context
                      .read<ManageAccountBloc>()
                      .state
                      .emailAddress
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          invalidEmail: (_) => 'Invalid Email',
                          orElse: () => 'Please fill out the Email field',
                        ),
                        (_) => 'Please fill out the Email field',
                      ),
                  onchangedCallback: (value) => context
                      .read<ManageAccountBloc>()
                      .add(ManageAccountEvent.emailChanged(value)),
                ),
                FieldEntry(
                  text: 'PASSWORD',
                  icon: Icons.lock_open_outlined,
                  isObscured: true,
                  validatorCallback: (_) => context
                      .read<ManageAccountBloc>()
                      .state
                      .password
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          shortPassword: (_) => 'Short password',
                          orElse: () => 'Please fill out the Password field',
                        ),
                        (_) => 'Please fill out the Password field',
                      ),
                  onchangedCallback: (value) => context
                      .read<ManageAccountBloc>()
                      .add(ManageAccountEvent.passwordChanged(value)),
                ),
                FieldEntry(
                  text: 'TEAM NAME',
                  icon: Icons.group_add_sharp,
                  isObscured: false,
                  validatorCallback: (_) => context
                      .read<ManageAccountBloc>()
                      .state
                      .teamName
                      .value
                      .fold(
                        (f) => f.maybeMap(
                          invalidName: (_) => 'Short Team Name',
                          orElse: () => 'Please fill out the team name field',
                        ),
                        (_) => 'Please fill out the team name field',
                      ),
                  onchangedCallback: (value) => context
                      .read<ManageAccountBloc>()
                      .add(ManageAccountEvent.teamNameChanged(value)),
                ),
                AuthButton('DONE', CustomColors.divider, '/splash', true,
                 () {
                  context.read<ManageAccountBloc>().add(
                        const ManageAccountEvent.updateUserAccountPressed(),
                      );
                })
              ],
            ),
          ),
        );
      },
    );
  }
}
