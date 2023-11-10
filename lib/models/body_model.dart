import 'package:flutter/material.dart';

class BodyModel extends StatelessWidget {
  final String bodyImage;
  final String bodyName;
  const BodyModel({
    super.key,
    required this.bodyImage,
    required this.bodyName,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          bodyName,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        Container(
          margin: const EdgeInsets.all(8),
          height: 70,
          width: 70,
          decoration: BoxDecoration(
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
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.asset(
              bodyImage,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ],
    );
  }
}
