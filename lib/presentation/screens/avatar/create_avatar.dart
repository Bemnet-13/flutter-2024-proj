import 'package:FantasyE/application/avatar/create_avatar/create_avatar_bloc.dart';
import 'package:FantasyE/domain/avatar/i_avatar_repository.dart';
import 'package:FantasyE/injection.dart';
import 'package:FantasyE/presentation/widgets/colors.dart';
import 'package:FantasyE/presentation/widgets/custom_field.dart';
import 'package:FantasyE/presentation/widgets/paddings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';


class CreateAvatarScreen extends StatelessWidget {
  const CreateAvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<CreateAvatarBloc>(
      create: (context) => getIt<CreateAvatarBloc>(),
      child: _buildContent(context),
    );
  }

  Widget _buildContent(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
            builder: (context) => IconButton(
                  onPressed: () => Scaffold.of(context).openDrawer(),
                  icon: const Icon(
                    Icons.menu,
                    color: CustomColors.lightPrimary,
                  ),
                )),
        title: const Text(
          'Create Avatar',
          style: TextStyle(color: CustomColors.lightPrimary),
        ),
        centerTitle: true,
        backgroundColor: CustomColors.darkPrimary,
      ),
      drawer: const Drawer(),
      body: BlocBuilder<CreateAvatarBloc, CreateAvatarState>(
        builder: (context, state) => Padding(
          padding: const EdgeInsets.symmetric(
              vertical: CustomPadding.large, horizontal: CustomPadding.small),
          child: Column(
            children: [
              const CustomTextFIeld(
                label: "Name"
              ),
              const CustomTextFIeld(
                label: 'Club',
              ),
              const CustomTextFIeld(
                label:'Score'
              ),
              const CreateAvatarButton("Create Avatar"),
              if (state.createFailureOrSuccessOption.fold(
                () => false,
                (option) => option.isLeft(),
              ))
                // Show error message based on state
                const Text(
                  'Error creating avatar!',
                  style: TextStyle(color: Colors.red),
                ),
            ],
          ),
        ),
      ),
    );
  }
}

class CreateAvatarButton extends StatelessWidget {
  final String buttonText;
  const CreateAvatarButton(this.buttonText, {super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        BlocProvider.of<CreateAvatarBloc>(context)
            .add(const CreateAvatarEvent.created());
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: CustomColors.accent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16.0),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 8.0),
      ),
      child: Text(
        buttonText,
        style: const TextStyle(
          color: Colors.black,
          fontSize: 25.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
