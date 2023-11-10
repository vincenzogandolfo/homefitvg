import 'package:flutter/material.dart';

class Addome extends StatelessWidget {
  Addome({super.key});

  final List<String> immaginiAddome = [
    'images/crunch_down.png',
    'images/fisarmonica.png',
    'images/addome_laterale.png',
    'images/ginocchia_alzate.png',
    'images/alzate_gambe_unite.png',
    'images/alzate_gambe_singole.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text(
          "Addome",
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
          itemCount: immaginiAddome.length,
          separatorBuilder: (BuildContext context, int index) => const Divider(height: 30),
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(immaginiAddome[index]);
          },
        ),
      ),
    );
  }
}
