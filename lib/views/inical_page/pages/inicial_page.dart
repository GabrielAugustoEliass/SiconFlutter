// ignore_for_file: public_member_api_docs, sort_constructors_first, must_be_immutable, prefer_const_constructors_in_immutables
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:sicon_flutter/controller/controller_card_consignacoes.dart';
import 'package:sicon_flutter/shared/app_bar_padrao/app_bar_padrao.dart';
import 'package:sicon_flutter/shared/constants/colors.dart';
import 'package:sicon_flutter/shared/items_menu_inferior/items_menu_inferior.dart';
import 'package:sicon_flutter/views/consignacoes/widgets/card_consignacoes_widget.dart';
import 'package:sicon_flutter/views/inical_page/widgets/card_margem_widget.dart';

class InicialPage extends StatefulWidget {
  InicialPage({Key? key}) : super(key: key);

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
    return Scaffold(
      bottomNavigationBar: ItemsMenuInferior(),
      appBar: AppBarPadrao(
        showCallBack: false,
        title: Image.asset('images/appbar_logo.png'),
      ),
      body: ListView(
        physics: BouncingScrollPhysics(parent: ScrollPhysics()),
        children: [
          CardMargemWidget(),
          InkWell(
            onTap: () {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: Center(child: Text('Remover Consignação')),
                    actions: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: ColorsApp.corAzulApp,
                            ),
                            onPressed: () {},
                            child: Text('Sair'),
                          ),
                          ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                            ),
                            onPressed: () {
                              setState(() {});
                            },
                            child: Text('Remover'),
                          ),
                        ],
                      ),
                    ],
                  );
                },
              );
            },
            child: Obx(
              () => CardConsignacoesWidget(
                index: c.listaConsignacoes.length,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
