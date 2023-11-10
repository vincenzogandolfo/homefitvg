import 'package:flutter/material.dart';

class Glutei extends StatelessWidget {
  Glutei({super.key});

  final List<String> immaginiGlutei = [
    'images/sumo_squat.png',
    'images/glutei_laterali.png',
    'images/glutei_dietro.png',
    'images/glutei_dietro_dxsx.png',
    'images/sumo_squat_barra.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text(
          "Glutei",
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
          itemCount: immaginiGlutei.length,
          separatorBuilder: (BuildContext context, int index) => const Divider(height: 30),
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(immaginiGlutei[index]);
          },
        ),
      ),
    );
  }
}
