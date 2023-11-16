import 'package:flutter/material.dart';

// Pulsante che Salva i dati nel Database
// e li trasferisce alla schermata ProfilePage

class ButtonWidget extends StatelessWidget {
  final String text;
  final VoidCallback onClicked;

  const ButtonWidget({
    super.key,
    required this.text,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) => ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.greenAccent,
          foregroundColor: Colors.white,
          shape: const StadiumBorder(),
          padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 12),
        ),
        onPressed: onClicked,
        child: Text(text),
      );
}
