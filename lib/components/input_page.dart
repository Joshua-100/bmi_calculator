import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import "package:bmi_calculator/components/card_elements.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const marginTop = 10.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

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
                      child: GestureDetector(
                    onTap: () {
                      print("male");
                      setState(() {
                        selectedGender = GenderType.male;
                      });
                    },
                    child: ReusableCard(
                      color: (selectedGender == GenderType.male)
                          ? activeCardColor
                          : inactiveCardColor,
                      cardChild: CardElements(
                          label: "Male", icon: FontAwesomeIcons.mars),
                    ),
                  )),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = GenderType.female;
                        });
                      },
                      child: ReusableCard(
                          color: (selectedGender == GenderType.female)
                              ? activeCardColor
                              : inactiveCardColor,
                          cardChild: CardElements(
                              label: "Female", icon: FontAwesomeIcons.venus)),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
                child: ReusableCard(
              color: activeCardColor,
            )),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                    onTap: () => print("hello"),
                    child: ReusableCard(
                      color: activeCardColor,
                    ),
                  )),
                  Expanded(
                      child: ReusableCard(
                    color: activeCardColor,
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
