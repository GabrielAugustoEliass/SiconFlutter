// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/controller_card_consignacoes.dart';

class TextFieldDetalhesWidget extends StatelessWidget {
  final String title;
  final int index;
  TextFieldDetalhesWidget(
      {super.key, required this.index, required this.title});

  final c = Get.put(ControllerCardConsignacoes());

  @override
  Widget build(BuildContext context) {
    final larguraTela = MediaQuery.of(context).size.width;
    final alturaTela = MediaQuery.of(context).size.height;

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: SizedBox(
        width: larguraTela * 0.36,
        child: TextField(
          decoration: InputDecoration(labelText: title),
        ),
      ),
    );
  }
}
