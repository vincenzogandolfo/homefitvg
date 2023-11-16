import 'dart:io';

import 'package:flutter/material.dart';

class ImageProfileWidget extends StatelessWidget {
  final String imageProfile;
  final bool isEdit;
  final VoidCallback onClicked;

  const ImageProfileWidget({
    super.key,
    required this.imageProfile,
    this.isEdit = false,
    required this.onClicked,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        children: [
          // Immagine Utente
          buildImage(),
          Positioned(
            bottom: 0,
            right: 4,

            // Icona (Blu) di Modifica in Basso a Dx
            child: buildEditIcon(),
          ),
        ],
      ),
    );
  }

  // Struttura dell' Immagine profilo
  // Inizialmente con Image dal Web (NetworkImage)
  // Successivamente con Image dalla Galleria (FileImage)

  Widget buildImage() {
    final image = imageProfile.contains('https://')
        ? NetworkImage(imageProfile)
        : FileImage(File(imageProfile));

    return ClipOval(
      child: Material(
        color: Colors.grey.shade200.withOpacity(0.2),
        child: Ink.image(
          image: image as ImageProvider,
          fit: BoxFit.cover,
          width: 100,
          height: 100,
          child: InkWell(onTap: onClicked),
        ),
      ),
    );
  }

  // Struttura Icona (Blu) per Modificare Utente

  Widget buildEditIcon() => buildCircle(
        color: Colors.white,
        all: 2,
        child: buildCircle(
          color: Colors.greenAccent,
          all: 8,
          child: Icon(
            isEdit ? Icons.add_a_photo : Icons.edit,
            color: Colors.white,
            size: 12,
          ),
        ),
      );

  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
  }) =>
      ClipOval(
        child: Container(
          padding: EdgeInsets.all(all),
          color: color,
          child: child,
        ),
      );
}
