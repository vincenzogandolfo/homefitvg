import 'package:flutter/material.dart';
import 'package:homefitvg/models/body_page_model.dart';

class Gambe extends StatelessWidget {
  Gambe({super.key});

  final List<String> immaginiGambe = [
    'images/squat.png',
    'images/polpacci.png',
    'images/leg_extension.png',
    'images/leg_extension_singolo.png',
    'images/leg_curl.png',
    'images/leg_curl_singolo.png',
    'images/squat_barra.png',
  ];

  @override
  Widget build(BuildContext context) {
    return BodyPageModel(
      titleBodyPart: "Gambe",
      numberExercise: immaginiGambe.length,
      imageExercise: immaginiGambe,
    );
  }
}
