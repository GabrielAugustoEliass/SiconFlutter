// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sicon_flutter/controller/controller_suporte.dart';
import 'package:sicon_flutter/shared/app_bar_padrao/app_bar_padrao.dart';
import 'package:sicon_flutter/shared/items_menu_inferior/items_menu_inferior.dart';
import 'package:sicon_flutter/shared/tamanhos_telas/tamanhos_tela.dart';

class Suporte extends StatefulWidget {
  const Suporte({super.key});

  @override
  State<Suporte> createState() => _SuporteState();
}

class _SuporteState extends State<Suporte> {
  final tamanhosTelas = Get.find<TamanhosTelas>();

  final controllerSuporte = Get.put(SuporteController());

  void resetarList() {
    controllerSuporte.listaPerguntasFrequentes.refresh();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: ItemsMenuInferior(),
      appBar: AppBarPadrao(title: const Text('Suporte'), showCallBack: true),
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                left: tamanhosTelas.larguraTela * 0.03,
                right: tamanhosTelas.larguraTela * 0.03,
                top: tamanhosTelas.alturaTela * 0.015,
              ),
              child: TextFormField(
                onChanged: (String valorDigitado) {
                  setState(() {
                    controllerSuporte.pesquisarDuvida(valorDigitado);
                  });
                },
                controller: controllerSuporte.controllerPergunta,
                decoration: InputDecoration(
                  labelText: 'Pesquise sua pergunta',
                  border: OutlineInputBorder(),
                ),
              ),
            ),
            SizedBox(
              width: tamanhosTelas.larguraTela,
              height: tamanhosTelas.alturaTela * 0.68,
              child: Obx(
                () => ListView.builder(
                  itemCount: controllerSuporte.listaPerguntasFrequentes.length,
                  physics: BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.only(
                        left: tamanhosTelas.larguraTela * 0.03,
                        right: tamanhosTelas.larguraTela * 0.03,
                        top: tamanhosTelas.alturaTela * 0.01,
                      ),
                      child: Card(
                        elevation: 3,
                        child: ListTile(
                          title: Text(
                            controllerSuporte
                                .listaPerguntasFrequentes[index].pergunta,
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
