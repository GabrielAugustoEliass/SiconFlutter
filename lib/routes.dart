// ignore_for_file: prefer_const_constructors

import 'package:get/get_navigation/get_navigation.dart';
import 'package:sicon_flutter/views/inical_page/inicial_page.dart';
import 'package:sicon_flutter/views/login_page/login_page.dart';

class Routes {
  static List<GetPage> routes = [
    GetPage(name: '/', page: () => LoginPage()),
    GetPage(name: '/inicialPage', page: () => InicialPage()),
  ];
}
