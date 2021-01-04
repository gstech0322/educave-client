import 'package:flutter/material.dart';

import 'colors.dart';
import 'text.dart';

ThemeData themeData = ThemeData(
  colorScheme: const ColorScheme.light().copyWith(
    primary: AppColors.primary,
    secondary: AppColors.secondary,
    error: AppColors.danger,
  ),
  textTheme: TextTheme(
    headline1: const TextStyle(fontSize: 42).merge(AppTextTheme.headingStyle),
    headline2: const TextStyle(fontSize: 34).merge(AppTextTheme.headingStyle),
    headline3: const TextStyle(
        fontSize: 30, fontWeight: FontWeight.bold, color: Colors.black),
    headline4: const TextStyle(
        fontSize: 18, fontWeight: FontWeight.bold, color: Colors.black),
    headline5: const TextStyle(fontSize: 15),
  ),
  fontFamily: 'Poppins',
);
