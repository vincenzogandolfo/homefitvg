import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text(
          "Spalle",
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
          itemCount: immaginiSpalle.length,
          separatorBuilder: (BuildContext context, int index) => const Divider(height: 30),
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(immaginiSpalle[index]);
          },
        ),
      ),
    );
  }
}
