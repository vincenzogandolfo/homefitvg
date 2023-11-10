import 'package:flutter/material.dart';

class DayText extends StatelessWidget {
  final String dayText;
  const DayText(this.dayText, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      dayText,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.green.shade800,
      ),
    );
  }
}

class TextWhiteModel extends StatelessWidget {
  final String testo;
  const TextWhiteModel(this.testo, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      testo,
      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Colors.white,
      ),
    );
  }
}

class TitleText extends StatelessWidget {
  final String title;
  const TitleText(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 16,
      ),
    );
  }
}

class RiposoText extends StatelessWidget {
  const RiposoText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: double.infinity,
      child: Center(
        child: Text(
          'Riposo (30 Secondi)',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.orangeAccent,
          ),
        ),
      ),
    );
  }
}

class TitleTipoAttivita extends StatelessWidget {
  final String titleActivity;
  const TitleTipoAttivita(this.titleActivity, {super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Center(
        child: Text(
          titleActivity,
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.blueAccent.shade100,
          ),
        ),
      ),
    );
  }
}
