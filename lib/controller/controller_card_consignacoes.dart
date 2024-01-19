import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../models/card_consignacao_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ControllerCardConsignacoes extends GetxController {
  final RxList<CardConsignacaoModel> listaConsignacoes =
      <CardConsignacaoModel>[].obs;

  final controllerServico = TextEditingController();
  final controllerNomeUsuario = TextEditingController();
  final controllerValorUsado = TextEditingController();
  final controllerValorEmprestimo = TextEditingController();

  void addConsignacao(String servico, String nomeUsuario,
      String valorEmprestimo, String valorUsado) {
    listaConsignacoes.add(
      CardConsignacaoModel(
        nomeServico: servico,
        situacao: nomeUsuario,
        valorEmprestimo: valorEmprestimo,
        valorUsado: valorUsado,
      ),
    );
    salvarDadosConsignacoes();
    update();
  }

  void salvarDadosConsignacoes() async {
    final prefs = await SharedPreferences.getInstance();

    List<String> stringListConsignacoes = listaConsignacoes
        .map((element) => jsonEncode(element.toJson()))
        .toList();

    await prefs.setStringList('dadosConsignacoes', stringListConsignacoes);
  }

  void lerDadosConsignacoes() async {
    final prefs = await SharedPreferences.getInstance();

    final List<String> consignacoes =
        prefs.getStringList('dadosConsignacoes') ?? [];

    List<CardConsignacaoModel> listConsignacoes = consignacoes
        .map((e) => CardConsignacaoModel.fromJson(jsonDecode(e)))
        .toList();

    listaConsignacoes.addAll(listConsignacoes);
    update();
  }
}
