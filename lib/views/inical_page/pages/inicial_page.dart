// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sicon_flutter/controller/controller_card_consignacoes.dart';
import 'package:sicon_flutter/shared/app_bar_padrao/app_bar_padrao.dart';
import 'package:sicon_flutter/shared/items_menu_inferior/items_menu_inferior.dart';
import 'package:sicon_flutter/views/consignacoes/widgets/card_consignacoes_widget.dart';
import 'package:sicon_flutter/views/inical_page/widgets/card_margem_widget.dart';

class InicialPage extends StatefulWidget {
  const InicialPage({super.key});

  @override
  State<InicialPage> createState() => _InicialPageState();
}

class _InicialPageState extends State<InicialPage> {
  final c = Get.put(ControllerCardConsignacoes());

  @override
  void initState() {
    super.initState();
    setState(() {
      c.lerDadosConsignacoes();
    });
  }

  @override
  Widget build(BuildContext context) {
    final larguraTela = MediaQuery.of(context).size.width;
    final alturaTela = MediaQuery.of(context).size.height;

    return Scaffold(
      bottomNavigationBar: ItemsMenuInferior(
        larguraTela: larguraTela,
        alturaTela: alturaTela,
      ),
      appBar: AppBarPadrao(
        showCallBack: false,
        title: Image.asset('images/appbar_logo.png'),
      ),
      body: ListView(
        children: [
          CardMargemWidget(
            alturaTela: alturaTela,
            larguraTela: larguraTela,
          ),
          CardConsignacoesWidget(
            alturaTela: alturaTela,
            larguraTela: larguraTela,
            index: c.listaConsignacoes.length,
          ),
        ],
      ),
    );
  }
}
