import 'package:flutter/material.dart';
import '../constants/app_colors.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,

      scaffoldBackgroundColor: AppColors.paper,

      fontFamily: 'Inter',

      primaryColor: AppColors.espresso,

      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.espresso,
        brightness: Brightness.light,
      ),

      dividerColor: AppColors.border,

      appBarTheme: const AppBarTheme(
        elevation: 0,
        centerTitle: false,
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
    );
  }
}