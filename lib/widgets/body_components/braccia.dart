import 'package:flutter/material.dart';
import 'package:homefitvg/models/body_page_model.dart';

class Braccia extends StatelessWidget {
  Braccia({super.key});

  final List<String> immaginiBraccia = [
    'images/bicipiti_orizzontali.png',
    'images/bicipiti_paralleli.png',
    'images/bicipiti_reverse.png',
    'images/tricipiti_inbasso.png',
    'images/tricipiti_inavanti.png',
    'images/tricipiti_dietro.png',
    'images/bicipiti_orizzontali_barra.png',
    'images/bicipiti_reverse_barra.png',
    'images/tricipiti_inbasso_barra.png',
  ];

  @override
  Widget build(BuildContext context) {
    return BodyPageModel(
      titleBodyPart: "Braccia",
      numberExercise: immaginiBraccia.length,
      imageExercise: immaginiBraccia,
    );
  }
}
