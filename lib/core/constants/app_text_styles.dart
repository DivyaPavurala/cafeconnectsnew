import 'package:flutter/material.dart';

import 'app_colors.dart';

class AppTextStyles {
  AppTextStyles._();

  // Display Heading (Welcome Screen)
  static const TextStyle display = TextStyle(
    fontFamily: 'Fraunces',
    fontSize: 38,
    fontWeight: FontWeight.w600,
    color: AppColors.ink,
    height: 1.05,
  );

  // Main Screen Heading
  static const TextStyle heading = TextStyle(
    fontFamily: 'Fraunces',
    fontSize: 24,
    fontWeight: FontWeight.w600,
    color: AppColors.ink,
  );

  // Section Title
  static const TextStyle title = TextStyle(
    fontFamily: 'Inter',
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.ink,
  );

  // Normal Text
  static const TextStyle body = TextStyle(
    fontFamily: 'Inter',
    fontSize: 14,
    color: AppColors.inkSoft,
    height: 1.6,
  );

  // Small Text
  static const TextStyle caption = TextStyle(
    fontFamily: 'Inter',
    fontSize: 12,
    color: AppColors.inkSoft,
  );

  // Button Text
  static const TextStyle button = TextStyle(
    fontFamily: 'Inter',
    fontSize: 15,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  static const TextStyle heading3 = TextStyle(
    fontFamily: "Fraunces",
    fontSize: 22,
    fontWeight: FontWeight.w600,
  );
  // Mono Text
  static const TextStyle eyebrow = TextStyle(
    fontFamily: 'IBMPlexMono',
    fontSize: 11,
    letterSpacing: 2,
    color: AppColors.inkSoft,
  );
}