import 'package:flutter/material.dart';

class ContentCard extends StatelessWidget {
  ContentCard({required this.myIcon, required this.myText});
  final IconData myIcon;
  final String myText;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          myIcon,
          size: 80.0,
        ),
        const SizedBox(
          height: 20.0,
        ),
        Text(
          myText,
          style: const TextStyle(
            fontSize: 20.0,
            color: Color(0xFF8D8E98),
          ),
        )
      ],
    );
  }
}
