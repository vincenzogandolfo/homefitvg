import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';

class ContattiButtonModel extends StatelessWidget {
  final String nomeCollegamento;
  final IconData iconaCollegamento;
  final dynamic tipoCollegamento;
  final Color coloreCollegamento;

  const ContattiButtonModel({
    super.key,
    required this.nomeCollegamento,
    required this.iconaCollegamento,
    required this.tipoCollegamento,
    required this.coloreCollegamento,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Center(
        child: Container(
          decoration: BoxDecoration(
            color: coloreCollegamento,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.5),
                spreadRadius: 5,
                blurRadius: 7,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          margin: const EdgeInsets.symmetric(
            vertical: 10,
            horizontal: 100,
          ),
          child: ListTile(
            leading: Icon(
              iconaCollegamento,
              color: Colors.white,
              size: 36,
            ),
            title: Text(
              nomeCollegamento,
              textAlign: TextAlign.center,
              style: const TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 16),
            ),
          ),
        ),
      ),
      onTap: () {
        launchUrl(tipoCollegamento);
      },
    );
  }
}
