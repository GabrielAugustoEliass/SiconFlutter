// ignore_for_file: prefer_const_constructors, sort_child_properties_last, avoid_print, curly_braces_in_flow_control_structures, void_checks
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sicon_flutter/controller/controller_card_consignacoes.dart';
import 'package:sicon_flutter/shared/constants/colors.dart';
import 'package:sicon_flutter/shared/tamanhos_telas/tamanhos_tela.dart';
import 'package:sicon_flutter/views/inical_page/pages/inicial_page.dart';
import '../../../controller/login_controller.dart';

class BottomLoginWidget extends StatefulWidget {
  const BottomLoginWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<BottomLoginWidget> createState() => _BottomLoginWidgetState();
}

class _BottomLoginWidgetState extends State<BottomLoginWidget> {
  final login = Get.find<LoginController>();
  final consignacoesController = Get.put(ControllerCardConsignacoes());

  final tamanhosTelas = Get.find<TamanhosTelas>();

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: ElevatedButton(
        onPressed: () {
          if (login.controllerNameUsuario.text != 'gabriel.elias' ||
              login.controllerSenhaUsuario.text != 'gabe12345') {
            login.showMensagemErroLogin();
          } else {
            login.controllerSenhaUsuario.clear();
            Get.to(InicialPage());
          }
        },
        child: Text('Acessar'),
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsApp.corAzulApp,
          fixedSize:
              Size(tamanhosTelas.larguraTela, tamanhosTelas.alturaTela * 0.058),
        ),
      ),
    );
  }
}
