// ignore_for_file: public_member_api_docs, sort_constructors_first, prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:sicon_flutter/shared/constants/colors.dart';

class ItemsMenuInferiorWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function()? onTap;
  const ItemsMenuInferiorWidget({
    Key? key,
    required this.title,
    required this.icon,
    required this.larguraTela,
    required this.alturaTela,
    this.onTap,
  }) : super(key: key);

  final double larguraTela;
  final double alturaTela;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: larguraTela * 0.25,
      height: alturaTela * 0.112,
      child: GestureDetector(
        onTap: onTap,
        child: Expanded(
          child: Card(
            elevation: 6,
            child: Padding(
              padding: EdgeInsets.only(
                left: alturaTela * 0.007,
                bottom: alturaTela * 0.002,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(
                    icon,
                    size: larguraTela * 0.07,
                    color: ColorsApp.corAzulApp,
                  ),
                  SizedBox(height: larguraTela * 0.03),
                  Text(
                    title,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: larguraTela * 0.034,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
