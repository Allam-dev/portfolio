import 'package:flutter/material.dart';
import 'package:portfolio/core/colors.dart';

ThemeData themeData = ThemeData(
  appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent, elevation: 0, centerTitle: true),
  scaffoldBackgroundColor: AppColors.grey,
  colorSchemeSeed: AppColors.green,
  textTheme: const TextTheme(
    headlineLarge: TextStyle(color: AppColors.green),
    headlineSmall: TextStyle(color: AppColors.white),
    bodyLarge: TextStyle(color: AppColors.lightGrey),
  ),
);