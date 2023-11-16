import 'package:flutter/material.dart';
import 'package:homefitvg/models/contatti_button_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:homefitvg/models/top_screen_model.dart';

class Contatti extends StatelessWidget {
  const Contatti({super.key});

  @override
  Widget build(BuildContext context) {
    final Uri mail = Uri.parse('mailto:vincenzo.gandolfo7@gmail.com');
    final Uri whatsApp = Uri.parse('whatsapp://send?phone=393471731213');
    final Uri amazon = Uri.parse(
        'https://www.amazon.it/s?k=set+elastici+fitness&crid=JZMB7C8VO7CL&sprefix=%2Caps%2C144&ref=nb_sb_ss_recent_1_0_recent');

    return Scaffold(
      body: Column(
        children: [
          const TopScreenModel(
            title: 'Contatti',
            subtitle: 'Hai bisogno di una scheda di allenamento su misura?',
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 10),
                      ContattiButtonModel(
                        nomeCollegamento: 'E-Mail',
                        iconaCollegamento: Icons.mail_outline,
                        tipoCollegamento: mail,
                        coloreCollegamento: Colors.greenAccent,
                      ),
                      ContattiButtonModel(
                        nomeCollegamento: 'WhatsApp',
                        iconaCollegamento: FontAwesomeIcons.whatsapp,
                        tipoCollegamento: whatsApp,
                        coloreCollegamento: Colors.greenAccent,
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Scegli ed acquista gli elastici per allenarti',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 12),
                      ContattiButtonModel(
                        nomeCollegamento: 'Amazon',
                        iconaCollegamento: FontAwesomeIcons.amazon,
                        tipoCollegamento: amazon,
                        coloreCollegamento: Colors.orangeAccent,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
