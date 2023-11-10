import 'package:flutter/material.dart';

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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.greenAccent,
        title: const Text(
          "Stretch",
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
          itemCount: immaginiStretch.length,
          separatorBuilder: (BuildContext context, int index) => const Divider(height: 30),
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(immaginiStretch[index]);
          },
        ),
      ),
    );
  }
}
