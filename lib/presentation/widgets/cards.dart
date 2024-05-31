import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'colors.dart';
import '../widgets/buttons.dart';

class DashboardCard extends StatelessWidget {
  final String navigateTo;
  final String buttonText;
  final String imagePath;
  static const imageWidth = 185.0;
  static const imageHeight = 185.0;

  const DashboardCard({
    super.key,
    required this.navigateTo,
    required this.buttonText,
    required this.imagePath,
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
          Image.asset(
            imagePath,
            width: imageWidth,
            height: imageHeight,
            // fit: BoxFit.contain,
          ),
          CardButton(buttonText, CustomColors.accent, navigateTo),
          SizedBox(
            height: 5,
          )
        ],
      ),
    );
  }
}
