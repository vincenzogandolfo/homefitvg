import 'package:flutter/material.dart';
import 'package:homefitvg/models/top_screen_model.dart';

import '../../models/text_model.dart';

class Motivazione extends StatelessWidget {
  const Motivazione({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const TopScreenModel(
            title: 'Motivazione',
            subtitle: 'Il fitness non è solo fatica ma..',
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                  flex: 3,
                  child: Container(
                    margin: const EdgeInsets.all(50),
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.circular(16),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: const Offset(0, 3),
                        ),
                      ],
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const TextWhiteModel('AUTOSTIMA'),
                        const TextWhiteModel('PASSIONE'),
                        const TextWhiteModel('VITALITÀ'),
                        const TextWhiteModel('SALUTE'),
                        const TextWhiteModel('SFOGO'),
                        Container(
                          height: 4,
                          color: Colors.white,
                          margin: const EdgeInsets.symmetric(vertical: 5),
                        ),
                        const Text(
                          'Prenditi cura di te',
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(child: Container()),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
