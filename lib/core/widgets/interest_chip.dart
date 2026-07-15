import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class InterestChip extends StatelessWidget {
  final String title;
  final bool selected;
  final VoidCallback onTap;

  const InterestChip({
    super.key,
    required this.title,
    required this.selected,
    required this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(100),
      onTap: onTap,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 250),
        padding: const EdgeInsets.symmetric(
          horizontal: 18,
          vertical: 12,
        ),
        decoration: BoxDecoration(
          color: selected
              ? AppColors.espresso
              : AppColors.white,
          borderRadius: BorderRadius.circular(100),
          border: Border.all(
            color: selected
                ? AppColors.espresso
                : AppColors.border,
            width: 1.4,
          ),
        ),
        child: Text(
          title,
          style: TextStyle(
            fontFamily: "Inter",
            fontWeight: FontWeight.w600,
            fontSize: 14,
            color: selected
                ? AppColors.paper
                : AppColors.ink,
          ),
        ),
      ),
    );
  }
}