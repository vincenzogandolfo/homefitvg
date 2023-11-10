import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text(
          "Braccia",
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
          itemCount: immaginiBraccia.length,
          separatorBuilder: (BuildContext context, int index) => const Divider(height: 30),
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(immaginiBraccia[index]);
          },
        ),
      ),
    );
  }
}
