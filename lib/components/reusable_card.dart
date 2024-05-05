import 'package:flutter/material.dart';

const double containerBorderRadius = 15.0;
const double marginAll = 8.0;

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.color, this.cardChild});

  //  = const Color(0xFF1D1E33);
  final Color? color;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(marginAll),
      decoration: BoxDecoration(
          borderRadius:
              BorderRadius.all(Radius.circular(containerBorderRadius)),
          color: color),
    );
  }
}
