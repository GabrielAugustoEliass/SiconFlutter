// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sicon_flutter/controller/controller_contatos.dart';
import 'package:sicon_flutter/shared/app_bar_padrao/app_bar_padrao.dart';
import 'package:sicon_flutter/shared/items_menu_inferior/items_menu_inferior.dart';
import 'package:sicon_flutter/views/contatos/widgets/lista_contatos_widget.dart';
import 'package:sicon_flutter/views/contatos/widgets/text_form_widget.dart';
import '../widgets/buttom_add_contatos_widget.dart';

class ContatosPages extends StatefulWidget {
  const ContatosPages({
    super.key,
  });

  @override
  State<ContatosPages> createState() => _ContatosPagesState();
}

class _ContatosPagesState extends State<ContatosPages> {
  @override
  Widget build(BuildContext context) {
    final larguraTela = MediaQuery.of(context).size.width;
    final alturaTela = MediaQuery.of(context).size.height;

    final controllerContatos = Get.put(ControllerContatos());

    return Scaffold(
      bottomNavigationBar: ItemsMenuInferior(
        larguraTela: larguraTela,
        alturaTela: alturaTela,
      ),
      appBar: AppBarPadrao(
        title: Text('Contatos'),
        showCallBack: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(
          top: alturaTela * 0.015,
          left: larguraTela * 0.015,
          right: larguraTela * 0.015,
        ),
        child: SizedBox(
          width: larguraTela,
          height: alturaTela * 0.65,
          child: Card(
            elevation: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 6, top: 20),
                  child: Row(
                    children: [
                      TextFormWidget(
                        title: 'Telefone',
                        textInputType: TextInputType.number,
                        controllerText: controllerContatos.controllerTelefone,
                      ),
                      SizedBox(width: 6),
                      TextFormWidget(
                        title: 'Nome',
                        textInputType: TextInputType.name,
                        controllerText: controllerContatos.controllerName,
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 25),
                ButtomAddContatosWidget(),
                SizedBox(height: 10),
                ListaContatosWidget()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
