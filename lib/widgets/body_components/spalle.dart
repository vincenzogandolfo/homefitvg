import 'package:flutter/material.dart';
import 'package:homefitvg/models/body_page_model.dart';

class Spalle extends StatelessWidget {
  Spalle({super.key});

  final List<String> immaginiSpalle = [
    'images/alzate_laterali.png',
    'images/alzate_frontali_orizzontali.png',
    'images/alzate_frontali_parallele.png',
    'images/alzate_180.png',
    'images/alzate_almento.png',
    'images/spinte_alte.png',
    'images/spinte_rotazione.png',
    'images/alzate_frontali_barra.png',
    'images/alzate_almento_barra.png',
    'images/spinte_alte_barra.png',
  ];

  @override
  Widget build(BuildContext context) {
    return BodyPageModel(
      titleBodyPart: "Spalle",
      numberExercise: immaginiSpalle.length,
      imageExercise: immaginiSpalle,
    );
  }
}
