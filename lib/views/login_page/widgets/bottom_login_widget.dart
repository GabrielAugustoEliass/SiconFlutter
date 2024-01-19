// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_print, curly_braces_in_flow_control_structures

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sicon_flutter/shared/constants/colors.dart';
import 'package:sicon_flutter/views/inical_page/pages/inicial_page.dart';
import '../../../controller/login_controller.dart';

class BottomLoginWidget extends StatelessWidget {
  BottomLoginWidget({
    Key? key,
  }) : super(key: key);

  final loginController = Get.find<LoginController>();

  @override
  Widget build(BuildContext context) {
    final larguraTela = MediaQuery.of(context).size.width;
    final alturaTela = MediaQuery.of(context).size.height;

    return Align(
      alignment: Alignment.bottomCenter,
      child: ElevatedButton(
        onPressed: () {
          if (loginController.controllerNameUsuario.text != 'gabriel.elias') {
            loginController.valorDigitadoUsuario(
                loginController.controllerNameUsuario.text);
          } else {
            Get.to(InicialPage());
          }
        },
        child: Text('Acessar'),
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsApp.corAzulApp,
          fixedSize: Size(larguraTela, alturaTela * 0.058),
        ),
      ),
    );
  }
}
