import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text(
          "Gambe",
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
          itemCount: immaginiGambe.length,
          separatorBuilder: (BuildContext context, int index) => const Divider(height: 30),
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(immaginiGambe[index]);
          },
        ),
      ),
    );
  }
}
