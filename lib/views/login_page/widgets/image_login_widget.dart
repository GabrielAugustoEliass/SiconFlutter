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
        'images/logo_marca.webp',
        width: larguraTela * 0.65,
        height: alturaTela * 0.13,
      ),
    );
  }
}
