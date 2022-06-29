import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

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
                    cardChild: contentCard(),
                  ),
                ),
                Expanded(
                  child: MainCard(
                    cardColor: myColor,
                    cardChild: contentCard(),
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

class contentCard extends StatelessWidget {
  const contentCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          FontAwesomeIcons.mars,
          size: 80.0,
        ),
        SizedBox(
          height: 20.0,
        ),
        Text(
          'MALE',
          style: TextStyle(
            fontSize: 20.0,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}

class MainCard extends StatelessWidget {
  MainCard({required this.cardColor, this.cardChild});
  final Color cardColor;
  final Widget? cardChild;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        //color: Color(0xFF1D1E33),
        color: cardColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: cardChild,
    );
  }
}
