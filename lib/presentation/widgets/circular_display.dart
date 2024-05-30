import 'package:flutter/material.dart';

class CircleDisplay extends StatelessWidget {
  final double radius;
  final String text;
  final Color backgroundColor;
  final TextStyle textStyle;
  static const Color primary = Color.fromARGB(255, 158, 158, 158);
  static const Color lightPrimary = Color.fromARGB(255, 245, 245, 245);

  CircleDisplay({
    required this.radius,
    required this.text,
    this.backgroundColor = primary,
    this.textStyle = const TextStyle(color: Colors.white, fontSize: 40.0),
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: radius * 2,
      height: radius * 2,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: backgroundColor,
      ),
      child: Center(
        child: Text(
          text,
          style: textStyle,
        ),
      ),
    );
  }
}