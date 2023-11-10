import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text(
          "Petto",
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
          itemCount: immaginiPetto.length,
          separatorBuilder: (BuildContext context, int index) => const Divider(height: 30),
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(immaginiPetto[index]);
          },
        ),
      ),
    );
  }
}
