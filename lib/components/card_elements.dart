import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class CardElements extends StatelessWidget {
  CardElements({this.icon, this.label});

  final IconData? icon;
  final String? label;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: iconSize,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          "$label",
          style: labelTextStyle,
        ),
      ],
    );
  }
}
