// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables, sort_child_properties_last, unrelated_type_equality_checks

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
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final tamanhoTela = Get.put(TamanhosTelas());
  final loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            width: tamanhoTela.larguraTela,
            height: tamanhoTela.alturaTela * 0.99,
            child: Padding(
              padding: EdgeInsets.only(
                top: tamanhoTela.alturaTela * 0.01,
                right: tamanhoTela.larguraTela * 0.035,
                left: tamanhoTela.larguraTela * 0.035,
                bottom: tamanhoTela.alturaTela * 0.01,
              ),
              child: Stack(
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
                  Align(
                    alignment: Alignment.topCenter,
                    child: ImageLoginWidget(
                      larguraTela: tamanhoTela.larguraTela,
                      alturaTela: tamanhoTela.alturaTela,
                    ),
                  ),
                  Form(
                    key: loginController.formKey,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        LoginTextFieldWidget(
                          controller: loginController.controllerNameUsuario,
                          icon: Icons.person_outline,
                          title: 'Usuário',
                          validar: (value) {
                            if (value.isEmpty) {
                              return 'O nome do usuário não pode ser vazio';
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.text,
                          onChanged: (valueDigitado) {
                            if (loginController.controllerNameUsuario.text !=
                                valueDigitado) {
                              return;
                            } else {
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: tamanhoTela.alturaTela * 0.03,
                        ),
                        LoginTextFieldWidget(
                          controller: loginController.controllerSenhaUsuario,
                          icon: Icons.lock_outline,
                          title: 'Senha',
                          validar: (value) {
                            if (value.isEmpty) {
                              return 'A senha não pode ser vazia';
                            } else {
                              return null;
                            }
                          },
                          keyboardType: TextInputType.text,
                          onChanged: (valueDigitado) {
                            if (valueDigitado !=
                                loginController.controllerSenhaUsuario) {
                              return 'Usuário ou senha Inválidos';
                            } else {
                              return null;
                            }
                          },
                        ),
                        SizedBox(
                          height: tamanhoTela.alturaTela * 0.01,
                        ),
                        Text(
                          'Esqueci minha senha',
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(
                          height: tamanhoTela.alturaTela * 0.05,
                        ),
                        BottomLoginWidget(),
                      ],
                    ),
                  ),
                  AjudasWidget()
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
