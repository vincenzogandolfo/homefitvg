import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text(
          "Cardio",
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(30),
        child: ListView.separated(
          itemCount: immaginiCardio.length,
          separatorBuilder: (BuildContext context, int index) => const Divider(height: 30),
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(immaginiCardio[index]);
          },
        ),
      ),
    );
  }
}
