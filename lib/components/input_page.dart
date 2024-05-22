import 'package:bmi_calculator/components/bottom_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import "package:bmi_calculator/components/card_elements.dart";
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:bmi_calculator/constants.dart';
import 'package:bmi_calculator/pages/results_page.dart';

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
  int weight = 80;
  int age = 20;

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
                    thumbColor: kButtonColor,
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
                    cardChild: Column(
                      children: [
                        const Text(
                          "WEIGHT",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          "$weight",
                          style: kNumberTextStyle,
                        ),
                        Row(
                          children: [
                            RoundButton(
                              icon: FontAwesomeIcons.minus,
                              onPressed: () {
                                setState(() {
                                  weight--;
                                });
                              },
                            ),
                            RoundButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    weight++;
                                  });
                                })
                          ],
                        ),
                      ],
                    ),
                    color: kActiveCardColor,
                  )),
                  Expanded(
                      child: ReusableCard(
                    cardChild: Column(
                      children: [
                        Text(
                          "AGE😄",
                          style: kLabelTextStyle,
                        ),
                        Text(
                          "$age",
                          style: kNumberTextStyle,
                        ),
                        Row(
                          children: [
                            RoundButton(
                                icon: FontAwesomeIcons.minus,
                                onPressed: () {
                                  setState(() {
                                    age--;
                                  });
                                }),
                            RoundButton(
                                icon: FontAwesomeIcons.plus,
                                onPressed: () {
                                  setState(() {
                                    age++;
                                  });
                                })
                          ],
                        )
                      ],
                    ),
                    color: kActiveCardColor,
                  ))
                ],
              ),
            ),
            MyButton(
              text: "CALCULATE",
              onPressed: () => Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ResultsPage())),
            )
          ],
        ));
  }
}

class RoundButton extends StatelessWidget {
  RoundButton({required this.icon, required this.onPressed});

  IconData? icon;
  Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      constraints: BoxConstraints(minWidth: 88.0, minHeight: 50.0),
      child: Icon(icon),
      fillColor: Color(0xFF4C4F5E),
      onPressed: onPressed,
      shape: CircleBorder(),
    );
  }
}
