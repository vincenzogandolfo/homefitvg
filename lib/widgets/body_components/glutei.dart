import 'package:flutter/material.dart';
import 'package:homefitvg/models/body_page_model.dart';

class Glutei extends StatelessWidget {
  Glutei({super.key});

  final List<String> immaginiGlutei = [
    'images/sumo_squat.png',
    'images/glutei_laterali.png',
    'images/glutei_dietro.png',
    'images/glutei_dietro_dxsx.png',
    'images/sumo_squat_barra.png',
  ];

  @override
  Widget build(BuildContext context) {
    return BodyPageModel(
      titleBodyPart: "Glutei",
      numberExercise: immaginiGlutei.length,
      imageExercise: immaginiGlutei,
    );
  }
}
