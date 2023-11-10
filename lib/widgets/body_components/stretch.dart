import 'package:flutter/material.dart';
import 'package:homefitvg/models/body_page_model.dart';

class Stretch extends StatelessWidget {
  Stretch({super.key});

  final List<String> immaginiStretch = [
    'images/t_pose.png',
    'images/butterfly_pose.png',
    'images/child_pose.png',
    'images/catcow_pose.png',
    'images/cobra_pose.png',
  ];

  @override
  Widget build(BuildContext context) {
    return BodyPageModel(
      titleBodyPart: "Stretch",
      numberExercise: immaginiStretch.length,
      imageExercise: immaginiStretch,
    );
  }
}
