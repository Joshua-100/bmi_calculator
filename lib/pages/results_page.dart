import 'dart:ffi';

import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_card.dart';

class ResultsPage extends StatelessWidget {
  const ResultsPage(
      {super.key,
      required this.bmiResultPhrase,
      required this.bmiResult,
      required this.bmiResultComment});

  final String bmiResultPhrase;
  final String bmiResult;
  final String bmiResultComment;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("BMI"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: Center(
                child: Text(
                  "Your Results",
                  style: kTitleTextStyle,
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
                      bmiResultPhrase,
                      style: TextStyle(fontSize: 20, color: Colors.green),
                    ),
                    Text(
                      bmiResult,
                      style: kNumberTextStyle,
                    ),
                    Center(
                      child: Text(
                        bmiResultComment,
                        style: TextStyle(fontSize: 22),
                      ),
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
