// ignore_for_file: avoid_unnecessary_containers

import 'package:flutter/material.dart';

class ImageLoginWidget extends StatelessWidget {
  const ImageLoginWidget({
    super.key,
    required this.larguraTela,
    required this.alturaTela,
  });

  final double larguraTela;
  final double alturaTela;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: larguraTela * 0.09),
      child: Image.asset(
        'images/logoSicon.jpg',
        width: larguraTela * 0.7,
        height: alturaTela * 0.14,
      ),
    );
  }
}
