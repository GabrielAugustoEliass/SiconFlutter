// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:sicon_flutter/shared/constants/colors.dart';
import 'package:sicon_flutter/shared/tamanhos_telas/tamanhos_tela.dart';

class ItemsMenuInferiorWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function()? onTap;
  ItemsMenuInferiorWidget({
    Key? key,
    required this.title,
    required this.icon,
    this.onTap,
  }) : super(key: key);

  final tamanhosTelas = Get.find<TamanhosTelas>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: tamanhosTelas.larguraTela * 0.244,
      child: GestureDetector(
        onTap: onTap,
        child: Card(
          elevation: 6,
          child: Padding(
            padding: EdgeInsets.only(
              left: tamanhosTelas.larguraTela * 0.012,
              bottom: tamanhosTelas.alturaTela * 0.009,
              top: tamanhosTelas.alturaTela * 0.005,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Icon(
                  icon,
                  size: tamanhosTelas.larguraTela * 0.07,
                  color: ColorsApp.corAzulApp,
                ),
                SizedBox(height: tamanhosTelas.larguraTela * 0.03),
                Text(
                  title,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: tamanhosTelas.larguraTela * 0.034,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
