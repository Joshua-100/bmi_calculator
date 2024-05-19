import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import "package:bmi_calculator/components/card_elements.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/constants.dart';

enum GenderType { male, female }

class inputPage extends StatefulWidget {
  const inputPage({
    super.key,
  });

  @override
  State<inputPage> createState() => _inputPageState();
}

class _inputPageState extends State<inputPage> {
  GenderType? selectedGender;
  int height = 100;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("BMI")),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },
                    color: (selectedGender == GenderType.male)
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: CardElements(
                        label: "Male", icon: FontAwesomeIcons.mars),
                  )),
                  Expanded(
                    child: ReusableCard(
                        onPress: () {
                          setState(() {
                            selectedGender = GenderType.female;
                          });
                        },
                        color: (selectedGender == GenderType.female)
                            ? kActiveCardColor
                            : kInactiveCardColor,
                        cardChild: CardElements(
                            label: "Female", icon: FontAwesomeIcons.venus)),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ReusableCard(
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        "$height",
                        style: kNumberTextStyle,
                      ),
                      Text(
                        "cm",
                        style: kLabelTextStyle,
                      )
                    ],
                  ),
                  Slider(
                    activeColor: Colors.white,
                    thumbColor: const Color(0xFFEB1555),
                    label: "Select Height",
                    value: height.toDouble(),
                    onChanged: (value) {
                      setState(() {
                        height = value.toInt();
                      });
                    },
                    min: 30,
                    max: 250,
                  )
                ],
              ),
              color: kActiveCardColor,
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: ReusableCard(
                    color: kActiveCardColor,
                  )),
                  Expanded(
                      child: ReusableCard(
                    color: kActiveCardColor,
                  ))
                ],
              ),
            ),
            Container(
              color: const Color(0xFFEB1555),
              margin: const EdgeInsets.only(top: kMarginTop),
              width: double.infinity,
              height: kBottomContainerHeight,
            )
          ],
        ));
  }
}
