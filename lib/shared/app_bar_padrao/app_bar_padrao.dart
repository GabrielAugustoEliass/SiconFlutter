// ignore_for_file: must_be_immutable, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sicon_flutter/controller/controller_image_picker.dart';
import 'package:sicon_flutter/shared/tamanhos_telas/tamanhos_tela.dart';
import '../constants/colors.dart';

class AppBarPadrao extends StatelessWidget implements PreferredSize {
  final Widget? title;
  bool showCallBack;

  AppBarPadrao({
    Key? key,
    required this.title,
    required this.showCallBack,
  }) : super(key: key);

  final tamanhoTela = Get.find<TamanhosTelas>();
  final controllerImage = Get.put(ControllerImagePicker());

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
          padding: const EdgeInsets.only(right: 10, top: 5),
          child: Stack(
            children: [
              CircleAvatar(
                radius: tamanhoTela.larguraTela * 0.055,
                backgroundColor: Colors.white,
                child: GestureDetector(
                  onTap: () {
                    controllerImage.pickImageFromGallery();
                  },
                  child: Obx(
                    () {
                      final imagePath = controllerImage.imagePath.value;
                      return CircleAvatar(
                        radius: tamanhoTela.larguraTela * 0.053,
                        backgroundColor: Colors.transparent,
                        backgroundImage:
                            imagePath != null ? FileImage(imagePath) : null,
                        child: imagePath == null
                            ? Icon(
                                Icons.person,
                                size: tamanhoTela.larguraTela * 0.06,
                                color: ColorsApp.corAzulApp,
                              )
                            : null,
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize {
    return const Size.fromHeight(kToolbarHeight);
  }

  @override
  Widget get child => throw UnimplementedError();
}
