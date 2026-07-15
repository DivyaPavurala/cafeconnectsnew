import 'package:flutter/material.dart';

import '../constants/app_colors.dart';

class SearchBox extends StatelessWidget {
  final TextEditingController? controller;
  final String hint;
  final ValueChanged<String>? onChanged;
  final VoidCallback? onTap;
  final bool readOnly;

  const SearchBox({
    super.key,
    this.controller,
    this.hint = "Search cafés, people or events",
    this.onChanged,
    this.onTap,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: AppColors.border,
        ),
      ),
      child: TextField(
        controller: controller,
        readOnly: readOnly,
        onChanged: onChanged,
        onTap: onTap,
        decoration: InputDecoration(
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 16,
            vertical: 16,
          ),
          prefixIcon: const Icon(
            Icons.search,
            color: AppColors.inkSoft,
          ),
          hintText: hint,
          hintStyle: const TextStyle(
            fontFamily: "Inter",
            color: AppColors.inkSoft,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}