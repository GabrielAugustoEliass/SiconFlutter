// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, unnecessary_new

import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:sicon_flutter/shared/tamanhos_telas/tamanhos_tela.dart';
import '../constants/colors.dart';

// ignore: must_be_immutable
class AppBarPadrao extends StatelessWidget implements PreferredSize {
  final Widget? title;
  bool showCallBack;

  AppBarPadrao({
    Key? key,
    required this.title,
    required this.showCallBack,
  }) : super(key: key);

  final tamanhoTela = Get.find<TamanhosTelas>();

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      automaticallyImplyLeading: showCallBack,
      backgroundColor: ColorsApp.corAzulApp,
      title: Padding(
        padding: EdgeInsets.only(left: tamanhoTela.larguraTela * 0.03),
        child: title,
      ),
      actions: [
        Padding(
          padding: EdgeInsets.only(right: tamanhoTela.larguraTela * 0.02),
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: Icon(
              Icons.person,
              color: ColorsApp.corAzulApp,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize {
    return new Size.fromHeight(kToolbarHeight);
  }

  @override
  Widget get child => throw UnimplementedError();
}
