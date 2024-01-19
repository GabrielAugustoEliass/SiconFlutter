// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class TextFormWidget extends StatelessWidget {
  final String title;
  final TextInputType textInputType;
  final TextEditingController? controllerText;

  const TextFormWidget({
    Key? key,
    required this.title,
    required this.textInputType,
    required this.controllerText,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final larguraTela = MediaQuery.of(context).size.width;
    final alturaTela = MediaQuery.of(context).size.height;

    return SizedBox(
      width: larguraTela * 0.45,
      height: alturaTela * 0.03,
      child: TextFormField(
        controller: controllerText,
        decoration: InputDecoration(hintText: title),
        keyboardType: textInputType,
      ),
    );
  }
}
