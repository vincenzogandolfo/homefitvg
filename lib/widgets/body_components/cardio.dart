import 'package:flutter/material.dart';
import 'package:homefitvg/models/body_page_model.dart';

class Cardio extends StatelessWidget {
  Cardio({super.key});

  final List<String> immaginiCardio = [
    'images/corsa.png',
    'images/bici.png',
    'images/jump_squat.png',
    'images/skip.png',
    'images/jumping_jack.png',
  ];

  @override
  Widget build(BuildContext context) {
    return BodyPageModel(
      titleBodyPart: "Cardio",
      numberExercise: immaginiCardio.length,
      imageExercise: immaginiCardio,
    );
  }
}
