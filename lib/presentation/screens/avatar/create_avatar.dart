import 'package:FantasyE/application/avatar/avatar_manager/avatar_manager_bloc.dart';
import 'package:FantasyE/presentation/widgets/appbar.dart';
import 'package:FantasyE/presentation/widgets/buttons.dart';
import 'package:FantasyE/presentation/widgets/drawer.dart';
import 'package:FantasyE/presentation/widgets/text_fields.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../../../../../injection.dart';
import '../../widgets/colors.dart';
import '../../widgets/custom_field.dart';
import 'package:flutter/material.dart';

class CreateAvatarScreen extends StatelessWidget {
  const CreateAvatarScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt<AvatarManagerBloc>(),
      child: const CreateAvatar(),
    );
  }
}

class CreateAvatar extends StatelessWidget {
  const CreateAvatar({
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
            title: 'Create Avatar',
            icon: Icons.menu,
          ),
          drawer: const DrawerMenu(),
          body: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                const SizedBox(
                  height: 48,
                ),
                const Text(
                  'CREATE NEW AVATAR',
                  style: TextStyle(
                      color: CustomColors.primaryText,
                      fontSize: 24,
                      fontWeight: FontWeight.bold),
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
                        initialValue: "",
                        text: "Avatar Name",
                        icon: Icons.format_list_numbered_rtl_sharp,
                        isObscured: false,
                        validatorCallback: (_) => context
                            .read<AvatarManagerBloc>()
                            .state
                            .avatarName
                            .value
                            .fold(
                              (f) => f.maybeMap(
                                invalidName: (_) => 'Invalid Avatar name',
                                orElse: () => 'Please fill out the Name field',
                              ),
                              (_) => 'Please fill out the Avatar name field',
                            ),
                        onchangedCallback: (value) => context
                            .read<AvatarManagerBloc>()
                            .add(AvatarManagerEvent.nameChanged(value)),
                      ),
                      FieldEntry(
                        initialValue: "",
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
                                invalidClub: (_) => 'Invalid Avatar Club',
                                orElse: () => 'Please fill out the Club field',
                              ),
                              (_) => 'Please fill out the Avatar club field',
                            ),
                        onchangedCallback: (value) => context
                            .read<AvatarManagerBloc>()
                            .add(AvatarManagerEvent.clubChanged(value)),
                      ),
                      FieldEntry(
                        initialValue: "",
                        text: "Avatar Score",
                        icon: Icons.format_list_numbered_rtl_sharp,
                        isObscured: false,
                        validatorCallback: (_) => context
                            .read<AvatarManagerBloc>()
                            .state
                            .avatarClub
                            .value
                            .fold(
                              (f) => f.maybeMap(
                                invalidScore: (_) => 'Invalid Avatar Score',
                                orElse: () => 'Please fill out the Score field',
                              ),
                              (_) => 'Please fill out the Avatar Score field',
                            ),
                        onchangedCallback: (value) => context
                            .read<AvatarManagerBloc>()
                            .add(AvatarManagerEvent.scoreChanged(value)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                const SizedBox(
                  height: 40,
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ActionButton(
                          buttonText: 'Create Avatar',
                          buttonColor: CustomColors.accent,
                          onPressedAction: () {
                            context.read<AvatarManagerBloc>().add(
                                const AvatarManagerEvent.createAvatarPressed());
                          }),
                    )
                  ],
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
