import 'package:FantasyE/application/league/league_manager/league_manager_bloc.dart';
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

class UpdateLeagueScreen extends StatelessWidget {
  const UpdateLeagueScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return UpdateLeague();
  }
}

class UpdateLeague extends StatelessWidget {
  const UpdateLeague({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LeagueManagerBloc, LeagueManagerState>(
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
                    unableToUpdate: (_) => const Text("Unable to update"),
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
            title: 'Update League',
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
                    'UPDATE LEAGUE',
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
                          initialValue: state.leagueName.getOrCrash(),
                          text: "League Name",
                          icon: Icons.format_list_numbered_rtl_sharp,
                          isObscured: false,
                          validatorCallback: (_) => context
                              .read<LeagueManagerBloc>()
                              .state
                              .leagueName
                              .value
                              .fold(
                                (f) => f.maybeMap(
                                  invalidName: (_) => 'Short league name',
                                  orElse: () =>
                                      'Please fill out the Name field',
                                ),
                                (_) => 'Please fill out the league name field',
                              ),
                          onchangedCallback: (value) => context
                              .read<LeagueManagerBloc>()
                              .add(LeagueManagerEvent.nameChanged(value)),
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
                          buttonText: 'Update League',
                          buttonColor: CustomColors.accent,
                          onPressedAction: () {
                            context.read<LeagueManagerBloc>().add(
                                const LeagueManagerEvent.updateLeaguePressed());
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
