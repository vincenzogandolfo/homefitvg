import 'package:flutter/material.dart';
import 'package:homefitvg/models/body_page_model.dart';

class Addome extends StatelessWidget {
  Addome({super.key});

  final List<String> immaginiAddome = [
    'images/crunch_down.png',
    'images/fisarmonica.png',
    'images/addome_laterale.png',
    'images/ginocchia_alzate.png',
    'images/alzate_gambe_unite.png',
    'images/alzate_gambe_singole.png',
  ];

  @override
  Widget build(BuildContext context) {
    return BodyPageModel(
      titleBodyPart: "Addome",
      numberExercise: immaginiAddome.length,
      imageExercise: immaginiAddome,
    );
  }
}
