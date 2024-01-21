// ignore_for_file: avoid_print, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sicon_flutter/shared/constants/colors.dart';

var c = Get.context;

class LoginController extends GetxController {
  final TextEditingController controllerNameUsuario = TextEditingController();
  final TextEditingController controllerSenhaUsuario = TextEditingController();

  final formKey = GlobalKey<FormState>();

  showMensagemErroLogin() {
    return showDialog(
      barrierDismissible: false,
      context: c!,
      builder: (context) => AlertDialog(
        title: Center(
          child: Text(
            'Atenção',
            style: TextStyle(color: ColorsApp.corAzulApp, fontSize: 25),
          ),
        ),
        actions: [
          Center(
            child: Text(
              'Usuário ou senha inválidos',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorsApp.corAzulApp,
              ),
              onPressed: () {
                Get.back();
              },
              child: Text('Ok'),
            ),
          ),
        ],
      ),
    );
  }
}
