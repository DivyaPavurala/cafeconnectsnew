import 'package:flutter/material.dart';

import '../constants/app_colors.dart';
import '../../models/cafe_model.dart';

class CafeCard extends StatelessWidget {
  final CafeModel cafe;
  final VoidCallback onTap;

  const CafeCard({
    super.key,
    required this.cafe,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(18),
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.only(bottom: 14),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(18),
          border: Border.all(
            color: AppColors.border,
          ),
        ),
        child: Row(
          children: [
            Container(
              width: 52,
              height: 52,
              decoration: BoxDecoration(
                color: AppColors.paper2,
                borderRadius: BorderRadius.circular(14),
              ),
              child: const Icon(
                Icons.local_cafe,
                color: AppColors.espresso,
              ),
            ),

            const SizedBox(width: 14),

            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    cafe.name,
                    style: const TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w700,
                      fontSize: 16,
                    ),
                  ),

                  const SizedBox(height: 4),

                  Text(
                    cafe.distance,
                    style: const TextStyle(
                      color: AppColors.inkSoft,
                    ),
                  ),
                ],
              ),
            ),

            Row(
              children: [
                const Icon(
                  Icons.star,
                  size: 18,
                  color: AppColors.mustard,
                ),
                const SizedBox(width: 4),
                Text(
                  cafe.rating.toString(),
                  style: const TextStyle(
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}