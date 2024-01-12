import 'package:flutter/material.dart';

class LoginTextFieldWidget extends StatelessWidget {
  final String title;
  final IconData icon;
  const LoginTextFieldWidget({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: title,
        suffixIcon: Icon(icon),
      ),
    );
  }
}
