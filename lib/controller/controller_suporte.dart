import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../models/suporte_model.dart';

class SuporteController extends GetxController {
  final TextEditingController controllerPergunta = TextEditingController();

  RxList<SuporteModel> listaPerguntasFrequentes = <SuporteModel>[
    SuporteModel(pergunta: 'Como posso recuperar minha senha do cartão?'),
    SuporteModel(pergunta: 'Como faço para bloquear meu cartão?'),
    SuporteModel(pergunta: 'Quais são os benefícios do meu cartão?'),
    SuporteModel(pergunta: 'Como visualizar minha fatura atual?'),
    SuporteModel(pergunta: 'Como faço para ativar meu cartão?'),
    SuporteModel(
        pergunta:
            'Posso adicionar um cartão de crédito adicional à minha conta?'),
    SuporteModel(
        pergunta: 'Como funciona o processo de contestação de uma transação?'),
    SuporteModel(pergunta: 'Como posso aumentar meu limite de crédito?'),
    SuporteModel(pergunta: 'Quais são as taxas associadas ao meu cartão?'),
  ].obs;

  @override
  void onInit() {
    super.onInit();
    // Copia os dados originais para a lista perguntasOriginais
    listaSuporte.addAll(listaPerguntasFrequentes);
  }

  List<SuporteModel> listaSuporte = <SuporteModel>[];

  void pesquisarDuvida(String caixaTexto) {
    if (caixaTexto.isEmpty) {
      listaPerguntasFrequentes.addAll(listaSuporte);
    } else {
      final listaDuvidas = listaPerguntasFrequentes
          .where((e) =>
              e.pergunta.toLowerCase().contains(caixaTexto.toLowerCase()))
          .toList();
      listaPerguntasFrequentes.assignAll(listaDuvidas);
      update();
    }
  }
}
