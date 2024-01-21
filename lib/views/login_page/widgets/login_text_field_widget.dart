import 'package:flutter/material.dart';

class LoginTextFieldWidget extends StatelessWidget {
  final String title;
  final IconButton icon;

  final TextEditingController controller;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  final bool isObscureText;
  const LoginTextFieldWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.controller,
    required this.keyboardType,
    required this.onChanged,
    required this.isObscureText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscureText,
      onChanged: onChanged,
      keyboardType: keyboardType,
      controller: controller,
      decoration: InputDecoration(
        labelText: title,
        suffixIcon: icon,
      ),
    );
  }
}
