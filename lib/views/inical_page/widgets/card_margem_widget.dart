// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:sicon_flutter/controller/controller_linearProgress.dart';
import '../../../shared/constants/colors.dart';

class CardMargemWidget extends StatefulWidget {
  const CardMargemWidget({
    Key? key,
    required this.alturaTela,
    required this.larguraTela,
  });

  final double larguraTela;
  final double alturaTela;

  @override
  State<CardMargemWidget> createState() => _CardMargemWidgetState();
}

class _CardMargemWidgetState extends State<CardMargemWidget> {
  final c = Get.put(ControllerlinearProgress());

  @override
  Widget build(BuildContext context) {
    final valorFinal = c.margemUtilizada.value - c.valorBruto.value;
    return SizedBox(
      width: widget.larguraTela,
      height: widget.alturaTela * 0.252,
      child: Padding(
        padding: EdgeInsets.only(
          top: widget.alturaTela * 0.017,
          left: widget.alturaTela * 0.01,
          right: widget.alturaTela * 0.01,
        ),
        child: Card(
          elevation: 2,
          child: Padding(
            padding: EdgeInsets.only(
              top: widget.alturaTela * 0.01,
              left: widget.larguraTela * 0.03,
              right: widget.larguraTela * 0.03,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Text(
                        'Margem Empréstimo',
                        style: TextStyle(fontSize: widget.larguraTela * 0.053),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.visibility_outlined,
                        color: ColorsApp.corAzulApp,
                        size: widget.larguraTela * 0.065,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: widget.alturaTela * 0.022),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Margem Utilizada:',
                      style: TextStyle(
                        color: ColorsApp.corLaranja,
                        fontSize: 17,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'R\$ ${c.margemUtilizada}',
                      style: TextStyle(
                        color: ColorsApp.corLaranja,
                        fontSize: 15,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: widget.alturaTela * 0.02),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Margem Bruta:',
                          style: TextStyle(
                            fontSize: 17,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'R\$ ${c.valorBruto}',
                          style: TextStyle(
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          'Margem Disponivel:',
                          style: TextStyle(
                              fontSize: 16, color: ColorsApp.corAzulApp),
                        ),
                        Text(
                          'R\$ $valorFinal',
                          style: TextStyle(
                            fontSize: 25,
                            color: ColorsApp.corAzulApp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 5),
                LinearProgressIndicator(
                  value: c.margemUtilizada.value / c.valorBruto.value,
                  color: ColorsApp.corAzulApp,
                  backgroundColor: ColorsApp.corLaranja,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
