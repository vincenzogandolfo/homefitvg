import 'package:flutter/material.dart';
import 'package:homefitvg/models/body_page_model.dart';

class Schiena extends StatelessWidget {
  Schiena({super.key});

  final List<String> immaginiSchiena = [
    'images/tirate_orizzontali.png',
    'images/tirate_parallele.png',
    'images/tirate_reverse.png',
    'images/aperture_orizzontali.png',
    'images/aperture_parallele.png',
    'images/tirate_orizzontali_barra.png',
    'images/tirate_reverse_barra.png',
  ];

  @override
  Widget build(BuildContext context) {
    return BodyPageModel(
      titleBodyPart: "Schiena",
      numberExercise: immaginiSchiena.length,
      imageExercise: immaginiSchiena,
    );
  }
}
