// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../controller/controller_contatos.dart';
import '../../../shared/constants/colors.dart';

class ButtomAddContatosWidget extends StatefulWidget {
  const ButtomAddContatosWidget({super.key});

  @override
  State<ButtomAddContatosWidget> createState() =>
      _ButtomAddContatosWidgetState();
}

class _ButtomAddContatosWidgetState extends State<ButtomAddContatosWidget> {
  final controllerContatos = Get.find<ControllerContatos>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: () {
          setState(() {
            controllerContatos.addContato(
              controllerContatos.controllerTelefone.text,
              controllerContatos.controllerName.text,
            );
            controllerContatos.controllerTelefone.clear();
            controllerContatos.controllerName.clear();
          });
        },
        child: CircleAvatar(
          radius: 25,
          backgroundColor: ColorsApp.corAzulApp,
          child: Center(
            child: Icon(
              Icons.add,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
