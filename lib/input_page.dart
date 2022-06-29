import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'main_card.dart';

const bottomContainerHeight = 50.0;

class InputPage extends StatefulWidget {
  const InputPage({Key? key}) : super(key: key);

  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color myColor = const Color(0xFF1D1E33);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: [
            Expanded(
                child: Row(
              children: [
                Expanded(
                  child: MainCard(
                    cardColor: myColor,
                    cardChild: ContentCard(
                      myText: 'MALE',
                      myIcon: FontAwesomeIcons.mars,
                    ),
                  ),
                ),
                Expanded(
                  child: MainCard(
                    cardColor: myColor,
                    cardChild: ContentCard(
                      myText: 'FEMALE',
                      myIcon: FontAwesomeIcons.venus,
                    ),
                  ),
                ),
              ],
            )),
            Expanded(
              child: MainCard(
                cardColor: myColor,
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: MainCard(
                      cardColor: myColor,
                    ),
                  ),
                  Expanded(
                    child: MainCard(
                      cardColor: myColor,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Container(
                height: bottomContainerHeight,
                width: double.infinity,
                color: Colors.amber,
              ),
            )
          ],
        ));
  }
}

