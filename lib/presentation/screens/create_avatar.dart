import 'package:FantasyE/presentation/widgets/appbar.dart';
import 'package:FantasyE/presentation/widgets/buttons.dart';
import 'package:FantasyE/presentation/widgets/drawer.dart';
import '../widgets/colors.dart';
import '../widgets/custom_field.dart';
import '../widgets/paddings.dart';
import 'package:flutter/material.dart';
import '../widgets/avatar.dart';

class CreateAvatarScreen extends StatelessWidget {
  const CreateAvatarScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppbar(
        title: 'Create Team',
        icon: Icons.menu,
      ),
      drawer: DrawerMenu(),
      body: Padding(
        padding: EdgeInsets.symmetric(
            vertical: CustomPadding.large, horizontal: CustomPadding.small),
        child: Column(
          children: [
            SizedBox(
              height: 48,
            ),
            CustomAvatar(dir: 'assets/profile.png'),
            SizedBox(
              height: 25,
            ),
            CustomTextFIeld(
              label: 'Name',
              hintText: 'eg. Abdulazez',
            ),
            SizedBox(
              height: 36,
            ),
            CustomTextFIeld(
              label: 'Club',
              hintText: 'eg. Arsenal',
            ),
            SizedBox(
              height: 36,
            ),
            CustomTextFIeld(
              label: 'Position',
              hintText: 'eg. forward',
            ),
            SizedBox(
              height: 36,
            ),
            CustomButton('Create Avatar', CustomColors.accent, '/admin_dashboard'),
          ],
        ),
      ),
    );
  }
}
