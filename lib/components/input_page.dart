import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import "package:bmi_calculator/components/card_elements.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const marginTop = 10.0;

class inputPage extends StatelessWidget {
  const inputPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("BMI")),
        body: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                    color: const Color(0xFF1D1E33),
                    cardChild: CardElements(
                        label: "Male", icon: FontAwesomeIcons.mars),
                  )),
                  Expanded(
                    child: ReusableCard(
                        color: const Color(0xFF1D1E33),
                        cardChild: CardElements(
                            label: "Female", icon: FontAwesomeIcons.venus)),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ReusableCard(
              color: const Color(0xFF1D1E33),
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                    color: const Color(0xFF1D1E33),
                  )),
                  Expanded(
                      child: ReusableCard(
                    color: const Color(0xFF1D1E33),
                  ))
                ],
              ),
            ),
            Container(
              color: const Color(0xFFEB1555),
              margin: const EdgeInsets.only(top: marginTop),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}
