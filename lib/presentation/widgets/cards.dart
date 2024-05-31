import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'colors.dart';
import '../widgets/buttons.dart';

class DashboardCard extends StatelessWidget {
  final String navigateTo;
  final String buttonText;
  final IconData icon;

  const DashboardCard({
    super.key,
    required this.navigateTo,
    required this.buttonText,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.symmetric(horizontal: 50, vertical: 0),
      decoration: BoxDecoration(
        color: CustomColors.lightPrimary,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            icon,
            size: 70,
          ),
          CardButton(buttonText, CustomColors.accent, navigateTo),
          const SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
