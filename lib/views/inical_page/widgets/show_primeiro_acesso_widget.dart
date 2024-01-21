// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

void showMyDialog(BuildContext context) {
  showDialog(
    context: context,
    builder: (context) => AlertDialog(
      // Conteúdo do AlertDialog
      title: Text("Título"),
      content: Text("Conteúdo do diálogo"),
      actions: [
        Text('Bem-vindo - Gabriel'),
      ],
    ),
  );
}
