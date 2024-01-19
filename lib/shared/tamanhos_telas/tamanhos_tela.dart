import 'package:flutter/material.dart';
import 'package:get/get.dart';

var co = Get.context;

class TamanhosTelas extends GetxController {
  final alturaTela = MediaQuery.of(co!).size.height;
  final larguraTela = MediaQuery.of(co!).size.width;
}
