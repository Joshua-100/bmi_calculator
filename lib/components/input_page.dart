import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import "package:bmi_calculator/components/card_elements.dart";
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;
const marginTop = 10.0;
const activeCardColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

class inputPage extends StatefulWidget {
  const inputPage({
    super.key,
  });

  @override
  State<inputPage> createState() => _inputPageState();

}

class _inputPageState extends State<inputPage> {
  Color maleColor = inactiveCardColor;
  Color femaleColor = inactiveCardColor;
  @override
  Widget build(BuildContext context) {

    void changeColor(int gender) {
      if (gender == 1){
        if (maleColor == inactiveCardColor){
          maleColor = activeCardColor;
          femaleColor = inactiveCardColor;
        }else {
          maleColor = inactiveCardColor;
        }
      }if (gender == 2){
        if (femaleColor == inactiveCardColor){
          femaleColor = activeCardColor;
          maleColor = inactiveCardColor;
        }
        else{
          femaleColor = inactiveCardColor;
        }
      }
    }

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
                        changeColor(1);
                      });
                    },
                    child: ReusableCard(
                      color: maleColor,
                      cardChild: CardElements(
                          label: "Male", icon: FontAwesomeIcons.mars),
                    ),
                  )),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          changeColor(2);
                        });
                      },
                      child: ReusableCard(
                          color: femaleColor,
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
