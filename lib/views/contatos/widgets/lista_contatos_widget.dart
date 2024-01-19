// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sicon_flutter/controller/controller_contatos.dart';
import 'package:sicon_flutter/shared/constants/colors.dart';

class ListaContatosWidget extends StatelessWidget {
  ListaContatosWidget({super.key});

  final controllerContatos = Get.find<ControllerContatos>();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Obx(
        () => controllerContatos.listContatos.isEmpty
            ? Center(
                child: Text('Nenhum Contato Adicionado'),
              )
            : ListView.builder(
                itemCount: controllerContatos.listContatos.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    trailing: Icon(
                      Icons.delete,
                      color: ColorsApp.corAzulApp,
                    ),
                    title: Text(controllerContatos.listContatos[index].name),
                    subtitle:
                        Text(controllerContatos.listContatos[index].telefone),
                  );
                },
              ),
      ),
    );
  }
}
