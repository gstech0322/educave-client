import 'package:flutter/material.dart';

import '../../../core/theme/theme.dart';

class AuthTextInput extends StatelessWidget {
  final String hintText;
  final TextEditingController controller;

  const AuthTextInput(
      {required this.hintText, required this.controller, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: hintText.toLowerCase() == 'password' ? true : false,
      controller: controller,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.light,
        hintText: hintText,
        contentPadding: const EdgeInsets.all(17),
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(7),
        ),
      ),
    );
  }
}
