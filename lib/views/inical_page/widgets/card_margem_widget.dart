// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_local_variable, use_key_in_widget_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sicon_flutter/controller/controller_linearProgress.dart';
import 'package:sicon_flutter/shared/tamanhos_telas/tamanhos_tela.dart';
import '../../../shared/constants/colors.dart';

class CardMargemWidget extends StatefulWidget {
  const CardMargemWidget({
    Key? key,
  });

  @override
  State<CardMargemWidget> createState() => _CardMargemWidgetState();
}

class _CardMargemWidgetState extends State<CardMargemWidget> {
  final c = Get.put(ControllerlinearProgress());
  final tamanhosTelas = Get.find<TamanhosTelas>();

  @override
  Widget build(BuildContext context) {
    final valorFinal = c.margemUtilizada.value - c.valorBruto.value;
    return Padding(
      padding: EdgeInsets.only(
        top: tamanhosTelas.alturaTela * 0.017,
        left: tamanhosTelas.larguraTela * 0.01,
        right: tamanhosTelas.larguraTela * 0.01,
      ),
      child: Expanded(
        child: Card(
          elevation: 2,
          child: Padding(
            padding: EdgeInsets.only(
              top: tamanhosTelas.alturaTela * 0.004,
              left: tamanhosTelas.larguraTela * 0.03,
              right: tamanhosTelas.larguraTela * 0.03,
              bottom: tamanhosTelas.alturaTela * 0.014,
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
                        style: TextStyle(
                            fontSize: tamanhosTelas.larguraTela * 0.053),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topRight,
                      child: Icon(
                        Icons.visibility_outlined,
                        color: ColorsApp.corAzulApp,
                        size: tamanhosTelas.larguraTela * 0.065,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: tamanhosTelas.alturaTela * 0.022),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Margem Utilizada:',
                      style: TextStyle(
                        color: ColorsApp.corLaranja,
                        fontSize: tamanhosTelas.larguraTela * 0.042,
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'R\$ ${c.margemUtilizada}',
                      style: TextStyle(
                        color: ColorsApp.corLaranja,
                        fontSize: tamanhosTelas.larguraTela * 0.04,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: tamanhosTelas.alturaTela * 0.02),
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
                            fontSize: tamanhosTelas.larguraTela * 0.042,
                          ),
                        ),
                        SizedBox(height: 2),
                        Text(
                          'R\$ ${c.valorBruto}',
                          style: TextStyle(
                            fontSize: tamanhosTelas.larguraTela * 0.042,
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
                              fontSize: tamanhosTelas.larguraTela * 0.042,
                              color: ColorsApp.corAzulApp),
                        ),
                        Text(
                          'R\$ $valorFinal',
                          style: TextStyle(
                            fontSize: tamanhosTelas.larguraTela * 0.065,
                            color: ColorsApp.corAzulApp,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: tamanhosTelas.alturaTela * 0.01),
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
