import 'package:flutter/material.dart';

class MainCard extends StatelessWidget {
  MainCard({required this.cardColor, this.cardChild, this.onPress});
  final Color cardColor;
  final Widget? cardChild;
  final void Function()? onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        margin: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          //color: Color(0xFF1D1E33),
          color: cardColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: cardChild,
      ),
    );
  }
}