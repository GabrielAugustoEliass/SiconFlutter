import 'package:flutter/material.dart';

class LoginTextFieldWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  final Function(String)? validar;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final Function(String)? onChanged;
  const LoginTextFieldWidget({
    super.key,
    required this.title,
    required this.icon,
    required this.validar,
    required this.controller,
    required this.keyboardType,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      keyboardType: keyboardType,
      controller: controller,
      validator: (value) {
        if (validar != null) {
          return validar!(value!);
        } else {
          return null;
        }
      },
      decoration: InputDecoration(
        labelText: title,
        suffixIcon: Icon(icon),
      ),
    );
  }
}
