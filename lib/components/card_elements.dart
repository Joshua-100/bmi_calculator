import 'package:flutter/material.dart';

const double iconSize = 80.0;
const fontSize = 20.0;

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
          style: const TextStyle(
            color: Color(0xFF8D8E98),
            fontSize: fontSize
          ),
        ),
      ],
    );
  }
}
