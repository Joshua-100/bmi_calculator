import 'dart:ffi';

import 'package:bmi_calculator/components/bottom_button.dart';
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
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  "Your Results",
                  style: kLabelTextStyle,
                ),
              ),
            ),
            Expanded(
              flex: 6,
              child: ReusableCard(
                cardChild: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,

                  children: [
                    Text(
                      "Normal",
                      style: TextStyle(fontSize: 20, color: Colors.green),
                    ),
                    Text(
                      "34.3",
                      style: kNumberTextStyle,
                    ),
                    Text(
                      "Your weight seems to be normal , so its okay",
                      style: TextStyle(fontSize: 22),
                    )
                  ],
                ),
                color: kActiveCardColor,
              ),
            ),
            Expanded(
              child: MyButton(
                  text: "RE-CALCULATE",
                  onPressed: () => Navigator.pop(context)),
            )
          ],
        ));
  }
}
