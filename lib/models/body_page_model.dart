import 'package:flutter/material.dart';

class BodyPageModel extends StatelessWidget {
  final String titleBodyPart;
  final int numberExercise;
  final List<String> imageExercise;

  const BodyPageModel({
    super.key,
    required this.titleBodyPart,
    required this.numberExercise,
    required this.imageExercise,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomRight: Radius.circular(40),
          ),
        ),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_circle_left_outlined,
            color: Colors.white,
            size: 35,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        backgroundColor: Colors.greenAccent,
        elevation: 16,
        title: Text(
          titleBodyPart,
          style: const TextStyle(
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
          itemCount: numberExercise,
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: 30),
          itemBuilder: (BuildContext context, int index) {
            return Image.asset(imageExercise[index]);
          },
        ),
      ),
    );
  }
}
