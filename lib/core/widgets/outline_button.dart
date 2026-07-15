import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../constants/app_text_styles.dart';

class OutlineButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final double height;
  final EdgeInsetsGeometry? margin;
  final IconData? icon;

  const OutlineButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.height = 56,
    this.margin,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: height,
      margin: margin,
      child: OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          foregroundColor: AppColors.espresso,
          side: const BorderSide(
            color: AppColors.espresso,
            width: 1.5,
          ),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(14),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: [
            if (icon != null) ...[
              Icon(icon, size: 20),
              const SizedBox(width: 8),
            ],
            Text(
              text,
              style: AppTextStyles.button.copyWith(
                color: AppColors.espresso,
              ),
            ),
          ],
        ),
      ),
    );
  }
}