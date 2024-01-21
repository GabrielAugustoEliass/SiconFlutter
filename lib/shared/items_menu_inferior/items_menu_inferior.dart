// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sicon_flutter/shared/items_menu_inferior/widgets/items_menu_inferior_widget.dart';
import 'package:sicon_flutter/shared/tamanhos_telas/tamanhos_tela.dart';
import 'package:sicon_flutter/views/suporte/suporte_page.dart';
import '../../views/consignacoes/pages/consignacoes_page.dart';
import '../../views/contatos/pages/contatos_page.dart';

class ItemsMenuInferior extends StatelessWidget {
  ItemsMenuInferior({super.key});

  final tamanhosTelas = Get.find<TamanhosTelas>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: tamanhosTelas.larguraTela * 0.012),
      child: SizedBox(
        height: tamanhosTelas.alturaTela * 0.12,
        width: tamanhosTelas.larguraTela,
        child: Row(
          children: [
            ItemsMenuInferiorWidget(
              onTap: () {
                Get.to(() => ConsignacoesPage());
              },
              title: 'Consignação',
              icon: Icons.monetization_on_outlined,
            ),
            ItemsMenuInferiorWidget(
              onTap: () {},
              title: 'Endereço',
              icon: Icons.map_outlined,
            ),
            ItemsMenuInferiorWidget(
              onTap: () {
                Get.to(() => ContatosPages());
              },
              title: 'Contatos',
              icon: Icons.person_outline,
            ),
            ItemsMenuInferiorWidget(
              onTap: () {
                Get.to(() => Suporte());
              },
              title: 'Suporte',
              icon: Icons.help_outline_outlined,
            ),
          ],
        ),
      ),
    );
  }
}
