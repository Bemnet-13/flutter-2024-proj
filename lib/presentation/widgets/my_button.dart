import '../widgets/colors.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String child;
  const CustomButton({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          color: CustomColors.primary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Text(
            child,
            style: const TextStyle(
              color: CustomColors.primaryText,
              fontWeight: FontWeight.bold,
              fontSize: 18,
            ),
          ),
        ));
  }
}
