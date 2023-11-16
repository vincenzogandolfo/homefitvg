import 'package:flutter/material.dart';


class TextModel extends StatelessWidget {
  final String testo;
  final double fontSize;
  const TextModel(this.testo, this.fontSize, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      testo,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}



