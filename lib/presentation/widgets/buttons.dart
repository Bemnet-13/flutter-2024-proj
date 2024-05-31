import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:FantasyE/application/auth/auth_logic/auth_logic_bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import '../../application/auth/auth_bloc.dart';
import 'colors.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final Color buttonColor;
  final String navigateTo;
  const CustomButton(this.buttonText, this.buttonColor, this.navigateTo,
      {super.key});
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => context.go(navigateTo),
        style: setButtonStyle(buttonColor, 16.0, 8.0),
        child: setButtonText(buttonText, Colors.black, 25.0, FontWeight.bold));
  }
}

class AuthButton extends CustomButton {
  final bool isLoggingIn;
  final void Function() onPressedAction;
  const AuthButton(super.buttonText, super.buttonColor, super.navigateTo,
      this.isLoggingIn, this.onPressedAction,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text(" "),
        ElevatedButton(
          onPressed: onPressedAction,
          style: setButtonStyle(buttonColor, 13.0, 8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              setButtonText(buttonText, Colors.white, 25.0, FontWeight.bold),
              const Icon(
                Icons.arrow_forward,
                color: Colors.white,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class RightAlignedButton extends CustomButton {
  const RightAlignedButton(
      super.buttonText, super.buttonColor, super.navigateTo,
      {super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        const Text(" "),
        CustomButton("Add players", CustomColors.accent, super.navigateTo)
      ],
    );
  }
}

class CardButton extends CustomButton {
  const CardButton(super.buttonText, super.buttonColor, super.navigateTo,
      {super.key});
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () => context.go(navigateTo),
        style: setButtonStyle(buttonColor, 12, 12),
        child:
            setButtonText(buttonText, Colors.white, 16.0, FontWeight.normal));
  }
}

// Setter methods
Text setButtonText(
    String buttonText, Color textColor, double fontSize, FontWeight weight) {
  TextStyle buttonTextStyle = TextStyle(
    fontSize: fontSize,
    color: textColor,
    fontWeight: weight,
  );
  return Text(
    buttonText,
    style: buttonTextStyle,
  );
}

ButtonStyle setButtonStyle(
    Color buttonColor, double paddingVertical, double paddingHorizontal) {
  return ElevatedButton.styleFrom(
    backgroundColor: buttonColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10.0),
    ),
    padding: EdgeInsets.symmetric(
        vertical: paddingVertical, horizontal: paddingHorizontal),
  );
}
