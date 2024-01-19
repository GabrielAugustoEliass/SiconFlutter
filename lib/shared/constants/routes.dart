// ignore_for_file: prefer_const_constructors

import 'package:get/get.dart';
import 'package:sicon_flutter/controller/controller_card_consignacoes.dart';
import '../../views/consignacoes/pages/consignacoes_page.dart';
import '../../views/contatos/pages/contatos_page.dart';
import '../../views/inical_page/pages/inicial_page.dart';
import '../../views/login_page/pages/login_page.dart';

final c = Get.put(ControllerCardConsignacoes());

class Routes {
  static List<GetPage> routes = [
    GetPage(name: '/', page: () => LoginPage()),
    GetPage(name: '/inicialPage', page: () => InicialPage()),
    GetPage(name: '/contatos', page: () => ContatosPages()),
    GetPage(name: '/consignacoes', page: () => ConsignacoesPage()),
  ];
}
