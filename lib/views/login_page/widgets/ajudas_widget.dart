// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:sicon_flutter/shared/constants/colors.dart';

class AjudasWidget extends StatelessWidget {
  const AjudasWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final larguraTela = MediaQuery.of(context).size.width;
    final alturaTela = MediaQuery.of(context).size.height;

    return Align(
      alignment: Alignment.bottomCenter,
      child: Padding(
        padding: EdgeInsets.only(bottom: alturaTela * 0.02),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.menu_book_outlined,
                  color: ColorsApp.corAzulApp,
                  size: larguraTela * 0.08,
                ),
                SizedBox(height: alturaTela * 0.01),
                Text('Primeiro Acesso'),
              ],
            ),
            SizedBox(
              width: larguraTela * 0.08,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Icon(
                  Icons.help_outline,
                  color: ColorsApp.corAzulApp,
                  size: larguraTela * 0.08,
                ),
                SizedBox(height: alturaTela * 0.01),
                Text('Chat de Suporte', style: TextStyle()),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
