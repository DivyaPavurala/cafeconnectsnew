import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class GhostButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  const GhostButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
        foregroundColor: AppColors.inkSoft,
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 12,
        ),
      ),
      child: Text(
        text,
        style: const TextStyle(
          fontFamily: 'Inter',
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}