import 'package:FantasyE/application/avatar/avatar_manager/avatar_manager_bloc.dart';
import 'package:FantasyE/presentation/widgets/appbar.dart';
import 'package:FantasyE/presentation/widgets/buttons.dart';
import 'package:FantasyE/presentation/widgets/drawer.dart';
import 'package:FantasyE/presentation/widgets/text_fields.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../injection.dart';
import '../../widgets/colors.dart';
import '../../widgets/custom_field.dart';
import 'package:flutter/material.dart';

class UpdateAvatarScreen extends StatelessWidget {
  const UpdateAvatarScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return UpdateAvatar();
  }
}

class UpdateAvatar extends StatelessWidget {
  const UpdateAvatar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<AvatarManagerBloc, AvatarManagerState>(
      listener: (context, state) {
        state.operationFailureOrSuccess.fold(
          () {},
          (either) => either.fold(
            (failure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: failure.maybeMap(
                    unexpected: (_) => const Text("Unexpected. Try again"),
                    insufficientPermissions: (_) =>
                        const Text("Insuffiecient Permissions"),
                    unableToUpdate: (_) =>const Text("Unable to update"),
                    orElse: () => const Text("Please Try again"),
                  ),
                ),
              );
            },
            (_) {
              context.go('/admin_dashboard');
            },
          ),
        );
      },
      builder: (context, state) {
        return Scaffold(
          appBar: const CustomAppbar(
            title: 'Update Avatar',
            icon: Icons.menu,
          ),
          drawer: DrawerMenu(),
          body: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 18),
            child: Center(
              child: Column(
                children: [
                  const SizedBox(
                    height: 48,
                  ),
                  const Text(
                    'UPDATE Avatar',
                    style: TextStyle(
                      color: CustomColors.primaryText,
                      fontSize: 24,
                    ),
                    textAlign: TextAlign.center,
                  ), // will be edited with custom text widget
                  const SizedBox(
                    height: 25,
                  ),
                  Form(
                    autovalidateMode: state.showErrorMessages
                        ? AutovalidateMode.always
                        : AutovalidateMode.disabled,
                    child: Column(
                      children: [
                        FieldEntry(
                          text: "League Name",
                          icon: Icons.format_list_numbered_rtl_sharp,
                          isObscured: false,
                          validatorCallback: (_) => context
                              .read<AvatarManagerBloc>()
                              .state
                              .avatarName
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  invalidName: (_) => 'Invalid avatar name',
                                  orElse: () =>
                                      'Please fill out the Name field',
                                ),
                                (_) => 'Please fill out the avatar name field',
                              ),
                          onchangedCallback: (value) => context
                              .read<AvatarManagerBloc>()
                              .add(AvatarManagerEvent.nameChanged(value)),
                        ),
                        FieldEntry(
                          text: "Avatar Score",
                          icon: Icons.format_list_numbered_rtl_sharp,
                          isObscured: false,
                          validatorCallback: (_) => context
                              .read<AvatarManagerBloc>()
                              .state
                              .avatarScore
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  invalidName: (_) => 'Invalid avatar score',
                                  orElse: () =>
                                      'Please fill out the Name field',
                                ),
                                (_) => 'Please fill out the avatar score field',
                              ),
                          onchangedCallback: (value) => context
                              .read<AvatarManagerBloc>()
                              .add(AvatarManagerEvent.scoreChanged(value)),
                        ),
                        FieldEntry(
                          text: "Avatar Club",
                          icon: Icons.format_list_numbered_rtl_sharp,
                          isObscured: false,
                          validatorCallback: (_) => context
                              .read<AvatarManagerBloc>()
                              .state
                              .avatarClub
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  invalidName: (_) => 'Invalid avatar club',
                                  orElse: () =>
                                      'Please fill out the club field',
                                ),
                                (_) => 'Please fill out the avatar club field',
                              ),
                          onchangedCallback: (value) => context
                              .read<AvatarManagerBloc>()
                              .add(AvatarManagerEvent.clubChanged(value)),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      ActionButton(
                          buttonText: 'Update Avatar',
                          buttonColor: CustomColors.accent,
                          onPressedAction: () {
                            context.read<AvatarManagerBloc>().add(
                                const AvatarManagerEvent.updateAvatarPressed());
                          })
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
