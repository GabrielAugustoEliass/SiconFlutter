// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sicon_flutter/shared/items_menu_inferior/widgets/items_menu_inferior_widget.dart';
import '../../views/consignacoes/pages/consignacoes_page.dart';
import '../../views/contatos/pages/contatos_page.dart';

class ItemsMenuInferior extends StatelessWidget {
  const ItemsMenuInferior({
    super.key,
    required this.larguraTela,
    required this.alturaTela,
  });

  final double larguraTela;
  final double alturaTela;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        ItemsMenuInferiorWidget(
          onTap: () {
            Get.to(() => ConsignacoesPage());
          },
          title: 'Consignação',
          icon: Icons.monetization_on_rounded,
          larguraTela: larguraTela,
          alturaTela: alturaTela,
        ),
        ItemsMenuInferiorWidget(
          onTap: () {},
          title: 'Endereço',
          icon: Icons.map,
          larguraTela: larguraTela,
          alturaTela: alturaTela,
        ),
        ItemsMenuInferiorWidget(
          onTap: () {
            Get.to(() => ContatosPages());
          },
          title: 'Contatos',
          icon: Icons.person_outline,
          larguraTela: larguraTela,
          alturaTela: alturaTela,
        ),
        ItemsMenuInferiorWidget(
          onTap: () {},
          title: 'Suporte',
          icon: Icons.help_outline_outlined,
          larguraTela: larguraTela,
          alturaTela: alturaTela,
        ),
      ],
    );
  }
}
