import 'package:flutter/material.dart';

import '../core/theme/theme.dart';

class ErrorText extends StatelessWidget {
  final String? text;

  const ErrorText({required this.text, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text ?? '',
      style: const TextStyle(color: AppColors.danger),
    );
  }
}
