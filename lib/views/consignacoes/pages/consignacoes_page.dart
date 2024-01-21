// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sicon_flutter/controller/controller_card_consignacoes.dart';
import 'package:sicon_flutter/shared/app_bar_padrao/app_bar_padrao.dart';
import 'package:sicon_flutter/shared/constants/colors.dart';
import 'package:sicon_flutter/shared/items_menu_inferior/items_menu_inferior.dart';
import '../widgets/campos_texto_widget.dart';

class ConsignacoesPage extends StatefulWidget {
  const ConsignacoesPage({super.key});

  @override
  State<ConsignacoesPage> createState() => _ConsignacoesPageState();
}

class _ConsignacoesPageState extends State<ConsignacoesPage> {
  final c = Get.put(ControllerCardConsignacoes());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ItemsMenuInferior(),
      appBar: AppBarPadrao(
        title: const Text('Adicionar Consignação'),
        showCallBack: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            CamposTextoWidget(
              title: 'Tipo de Serviço',
              controllerCampos: c.controllerServico,
              textInputType: TextInputType.text,
            ),
            CamposTextoWidget(
              title: 'Situação',
              controllerCampos: c.controllerNomeUsuario,
              textInputType: TextInputType.text,
            ),
            CamposTextoWidget(
              title: 'Valor Empréstimo',
              controllerCampos: c.controllerValorUsado,
              textInputType: TextInputType.number,
            ),
            CamposTextoWidget(
              title: 'Valor Usado',
              controllerCampos: c.controllerValorEmprestimo,
              textInputType: TextInputType.number,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: ColorsApp.corAzulApp,
              ),
              onPressed: () {
                setState(() {
                  c.addConsignacao(
                    c.controllerServico.text,
                    c.controllerNomeUsuario.text,
                    c.controllerValorUsado.text,
                    c.controllerValorEmprestimo.text,
                  );
                  c.controllerServico.clear();
                  c.controllerNomeUsuario.clear();
                  c.controllerValorUsado.clear();
                  c.controllerValorEmprestimo.clear();
                  Get.back();
                });
              },
              child: const Text('Adicionar Empréstimo'),
            ),
          ],
        ),
      ),
    );
  }
}
