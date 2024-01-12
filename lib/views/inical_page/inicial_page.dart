// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sicon_flutter/shared/app_bar_padrao/app_bar_padrao.dart';
import 'package:sicon_flutter/views/inical_page/widgets/card_margem_widget.dart';

class InicialPage extends StatefulWidget {
  const InicialPage({super.key});

  @override
  State<InicialPage> createState() => _InicialPageState();
}

class _InicialPageState extends State<InicialPage> {
  @override
  Widget build(BuildContext context) {
    final larguraTela = MediaQuery.of(context).size.width;
    final alturaTela = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBarPadrao(),
      body: Column(
        children: [
          CardMargemWidget(
            alturaTela: alturaTela,
            larguraTela: larguraTela,
          ),
        ],
      ),
    );
  }
}
