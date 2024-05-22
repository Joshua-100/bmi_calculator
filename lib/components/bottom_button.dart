import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  MyButton({required this.text, required this.onPressed});

  String? text;
  Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        height: kBottomContainerHeight,
        margin: const EdgeInsets.only(top: kMarginTop),
        width: double.infinity,
        color: kButtonColor,
        child: Center(child: Text(text!, style: kButtonTextStyle,)),
      ),
    );
  }
}
