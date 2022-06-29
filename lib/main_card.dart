import 'package:flutter/material.dart';

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