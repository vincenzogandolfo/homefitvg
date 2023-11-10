import 'package:flutter/material.dart';
import 'package:homefitvg/models/body_page_model.dart';

class Petto extends StatelessWidget {
  Petto({super.key});

  final List<String> immaginiPetto = [
    'images/spinte.png',
    'images/spinte_singole.png',
    'images/croci.png',
    'images/croci_singole.png',
    'images/pullover.png',
    'images/spinte_strette_orizzontali.png',
    'images/spinte_strette_parallele.png',
    'images/alzate_diagonali.png',
    'images/alzate_diagonali_singole.png',
    'images/spinte_barra.png',
    'images/spinte_strette_barra.png',
    'images/pullover_barra.png',
  ];

  @override
  Widget build(BuildContext context) {
    return BodyPageModel(
      titleBodyPart: "Petto",
      numberExercise: immaginiPetto.length,
      imageExercise: immaginiPetto,
    );
  }
}
