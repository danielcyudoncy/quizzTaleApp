
import 'package:flutter/material.dart';
import 'package:quizztale_app/utils/constant/sizes.dart';


class AppPrimaryButton extends StatelessWidget {
  const AppPrimaryButton({
    super.key,
    required this.buttonText, required this.buttonColor, required this.textColor,
  });

  final String buttonText;
  final Color buttonColor, textColor;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: AppSizes.buttonHeight,
      decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(4)),
      child: Center(
          child: Text(
        buttonText,
        style: TextStyle(color: textColor, fontWeight: FontWeight.bold),
      )),
    );
  }
}
