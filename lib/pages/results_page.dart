import 'dart:ffi';

import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Results"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Center(
              child: Text(
                "Your Results",
                style: kLabelTextStyle,
              ),
            ),
            Text(
              "34.3",
              style: kNumberTextStyle,
            )
          ],
        ));
  }
}
