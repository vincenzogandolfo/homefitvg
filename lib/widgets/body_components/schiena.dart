import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text(
          "Schiena",
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
          itemCount: immaginiSchiena.length,
          separatorBuilder: (BuildContext context, int index) => const Divider(height: 30),
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(immaginiSchiena[index]);
          },
        ),
      ),
    );
  }
}
