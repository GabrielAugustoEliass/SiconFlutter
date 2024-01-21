// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:sicon_flutter/controller/login_controller.dart';
import 'package:sicon_flutter/shared/constants/colors.dart';
import 'package:sicon_flutter/shared/tamanhos_telas/tamanhos_tela.dart';
import 'package:sicon_flutter/views/login_page/widgets/ajudas_widget.dart';
import 'package:sicon_flutter/views/login_page/widgets/bottom_login_widget.dart';
import 'package:sicon_flutter/views/login_page/widgets/image_login_widget.dart';
import 'package:sicon_flutter/views/login_page/widgets/login_text_field_widget.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final tamanhoTela = Get.put(TamanhosTelas());
  final login = Get.put(LoginController());
  bool isVisible = true;

  void showSenha() {
    setState(() {
      isVisible = !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SizedBox(
          height: tamanhoTela.alturaTela,
          width: tamanhoTela.larguraTela,
          child: Padding(
            padding: EdgeInsets.only(
              top: tamanhoTela.alturaTela * 0.01,
              right: tamanhoTela.larguraTela * 0.037,
              left: tamanhoTela.larguraTela * 0.037,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(
                        Icons.grid_view_sharp,
                        color: ColorsApp.corAzulApp,
                      ),
                    ],
                  ),
                  ImageLoginWidget(
                    larguraTela: tamanhoTela.larguraTela,
                    alturaTela: tamanhoTela.alturaTela,
                  ),
                  Form(
                    key: login.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: tamanhoTela.alturaTela * 0.1),
                        LoginTextFieldWidget(
                          controller: login.controllerNameUsuario,
                          icon: IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.person_outline),
                          ),
                          title: 'Usuário',
                          keyboardType: TextInputType.text,
                          onChanged: (valueDigitado) {},
                          isObscureText: false,
                        ),
                        SizedBox(height: tamanhoTela.alturaTela * 0.03),
                        LoginTextFieldWidget(
                          isObscureText: isVisible,
                          controller: login.controllerSenhaUsuario,
                          icon: IconButton(
                            onPressed: () {
                              showSenha();
                            },
                            icon: isVisible
                                ? const Icon(Icons.visibility_off_outlined)
                                : const Icon(Icons.visibility_outlined),
                          ),
                          title: 'Senha',
                          keyboardType: TextInputType.text,
                          onChanged: (valueDigitado) {},
                        ),
                        SizedBox(height: tamanhoTela.alturaTela * 0.01),
                        Text('Esqueci minha senha', textAlign: TextAlign.left),
                        SizedBox(height: tamanhoTela.alturaTela * 0.05),
                        BottomLoginWidget(),
                        AjudasWidget(),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
