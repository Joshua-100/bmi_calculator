import 'package:bmi_calculator/themes/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

const bottomContainerHeight = 80.0;

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkTheme,
      home: const InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  const InputPage({super.key});

  @override
  State<InputPage> createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  void doNothing() {
    print("Yes");
  }

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
                    cardChild: CardElements(
                        label: "Male", icon: FontAwesomeIcons.mars),
                  )),
                  Expanded(
                    child: ReusableCard(
                        cardChild: CardElements(
                            label: "Female", icon: FontAwesomeIcons.venus)),
                  ),
                ],
              ),
            ),
            Expanded(child: ReusableCard()),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: ReusableCard()),
                  Expanded(child: ReusableCard())
                ],
              ),
            ),
            Container(
              color: const Color(0xFFEB1555),
              margin: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }

  Container ReusableCard(
      {Color color = const Color(0xFF1D1E33),
      Widget cardChild = const SizedBox()}) {
    // Color color = const Color(0xFF1D1E33);
    return Container(
      child: cardChild,
      margin: EdgeInsets.all(8),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15)), color: color),
    );
  }
}

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
          FontAwesomeIcons.mars,
          size: 80.0,
        ),
        Text("Male"),
      ],
    );
  }
}
