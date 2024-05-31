import '../widgets/colors.dart';
import 'package:flutter/material.dart';

class CustomAvatar extends StatelessWidget {
  final String dir;
  final double rad;
  const CustomAvatar({super.key, this.rad = 64, required this.dir});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: CustomColors.primaryText,
      radius: rad,
      child: CircleAvatar(
        radius: rad - 1,
        backgroundColor: CustomColors.lightPrimary,
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: Image.asset(
            dir,
            height: 63,
          ),
        ),
      ),
    );
  }
}
