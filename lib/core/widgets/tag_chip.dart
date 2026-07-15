import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class TagChip extends StatelessWidget {
  final String text;
  final bool selected;
  final VoidCallback? onTap;

  const TagChip({
    super.key,
    required this.text,
    this.selected = false,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 10,
        ),
        decoration: BoxDecoration(
          color: selected
              ? AppColors.espresso
              : AppColors.white,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: AppColors.border,
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w600,
            color: selected
                ? AppColors.paper
                : AppColors.ink,
          ),
        ),
      ),
    );
  }
}