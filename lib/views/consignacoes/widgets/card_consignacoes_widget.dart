// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sicon_flutter/controller/controller_card_consignacoes.dart';
import 'package:sicon_flutter/shared/constants/colors.dart';
import 'package:sicon_flutter/shared/tamanhos_telas/tamanhos_tela.dart';

class CardConsignacoesWidget extends StatefulWidget {
  const CardConsignacoesWidget({
    Key? key,
    required this.index,
  });

  final int index;

  @override
  State<CardConsignacoesWidget> createState() => _CardConsignacoesWidgetState();
}

class _CardConsignacoesWidgetState extends State<CardConsignacoesWidget> {
  final c = Get.put(ControllerCardConsignacoes());
  final tamanhosTelas = Get.find<TamanhosTelas>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: tamanhosTelas.alturaTela * 0.015,
      ),
      child: Expanded(
        child: Obx(
          () => SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: c.listaConsignacoes.map((consignacao) {
                return Column(
                  children: [
                    Text(
                      'Empréstimos',
                      style: TextStyle(
                        fontSize: tamanhosTelas.larguraTela * 0.059,
                      ),
                    ),
                    SizedBox(
                      width: tamanhosTelas.larguraTela,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: tamanhosTelas.larguraTela * 0.011,
                          right: tamanhosTelas.larguraTela * 0.011,
                        ),
                        child: Card(
                          elevation: 3,
                          child: Padding(
                            padding: EdgeInsets.all(
                                tamanhosTelas.larguraTela * 0.03),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(
                                      consignacao.nomeServico,
                                      style: TextStyle(
                                        fontSize:
                                            tamanhosTelas.larguraTela * 0.047,
                                      ),
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        RichText(
                                          text: TextSpan(
                                            text: '',
                                            style: TextStyle(
                                              color: Colors.black,
                                              fontSize:
                                                  tamanhosTelas.larguraTela *
                                                      0.045,
                                            ),
                                            children: [
                                              TextSpan(
                                                text: 'Situação: ',
                                                style: TextStyle(),
                                              ),
                                              TextSpan(
                                                text: consignacao.situacao,
                                                style: TextStyle(
                                                  color: consignacao.situacao ==
                                                          'Cancelado'
                                                      ? Colors.red
                                                      : ColorsApp.corLaranja,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                SizedBox(
                                    height: tamanhosTelas.alturaTela * 0.01),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    c.listaConsignacoes.length >= 2
                                        ? Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            size: 25,
                                            color: Colors.grey,
                                          )
                                        : Icon(null),
                                  ],
                                ),
                                SizedBox(
                                    height: tamanhosTelas.alturaTela * 0.01),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Valor Empréstimo:',
                                          style: TextStyle(
                                            fontSize:
                                                tamanhosTelas.larguraTela *
                                                    0.037,
                                          ),
                                        ),
                                        Text(
                                          'R\$ ${consignacao.valorEmprestimo}',
                                          style: TextStyle(
                                            fontSize:
                                                tamanhosTelas.larguraTela *
                                                    0.062,
                                            color: ColorsApp.corLaranja,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          'Valor Usado:',
                                          style: TextStyle(
                                            fontSize:
                                                tamanhosTelas.larguraTela *
                                                    0.037,
                                          ),
                                        ),
                                        Text(
                                          'R\$ ${consignacao.valorUsado}',
                                          style: TextStyle(
                                            fontSize:
                                                tamanhosTelas.larguraTela *
                                                    0.062,
                                            color: ColorsApp.corAzulApp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          ),
        ),
      ),
    );
  }
}
