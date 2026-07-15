import 'package:flutter/material.dart';

import 'package:cafeconnects/core/constants/app_colors.dart';
import 'package:cafeconnects/core/constants/app_text_styles.dart';
import '../../core/widgets/interest_chip.dart';
import 'package:cafeconnects/core/widgets/bottom_nav.dart';
import 'package:cafeconnects/core/widgets/cafe_card.dart';
import 'package:cafeconnects/core/widgets/primary_button.dart';
import 'package:cafeconnects/core/widgets/search_box.dart';
import 'package:cafeconnects/core/widgets/tag_chip.dart';
import '../../models/interest_model.dart';
import 'package:cafeconnects/models/cafe_model.dart';
import '../home/presentation/screens/home_screen.dart';
class InterestScreen extends StatefulWidget {
  const InterestScreen({super.key});

  @override
  State<InterestScreen> createState() => _InterestScreenState();
}

class _InterestScreenState extends State<InterestScreen> {

  final List<InterestModel> interests = [

    InterestModel(title: "Politics"),

    InterestModel(title: "Startups", isSelected: true),

    InterestModel(title: "Technology", isSelected: true),

    InterestModel(title: "Cinema"),

    InterestModel(title: "Books", isSelected: true),

    InterestModel(title: "Travel"),

    InterestModel(title: "Fitness"),

    InterestModel(title: "Real Estate"),

  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: AppColors.paper,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          "Pick your interests",
          style: TextStyle(
            fontFamily: "Fraunces",
            color: AppColors.ink,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: SafeArea(

        child: Padding(

          padding: const EdgeInsets.all(22),

          child: Column(

            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Text(
                "STEP 1 OF 1 · CHOOSE AT LEAST 3",
                style: AppTextStyles.eyebrow,
              ),

              const SizedBox(height: 24),

              Wrap(

                spacing: 10,

                runSpacing: 10,

                children: interests.map((interest) {

                  return InterestChip(

                    title: interest.title,

                    selected: interest.isSelected,

                    onTap: () {

                      setState(() {

                        interest.isSelected = !interest.isSelected;

                      });

                    },

                  );

                }).toList(),

              ),

              const SizedBox(height: 28),

              Container(

                padding: const EdgeInsets.all(16),

                decoration: BoxDecoration(

                  color: AppColors.white,

                  borderRadius: BorderRadius.circular(18),

                  border: Border.all(
                    color: AppColors.border,
                  ),

                ),

                child: const Row(

                  crossAxisAlignment: CrossAxisAlignment.start,

                  children: [

                    Text(
                      "🛡️",
                      style: TextStyle(fontSize: 22),
                    ),

                    SizedBox(width: 12),

                    Expanded(

                      child: Column(

                        crossAxisAlignment: CrossAxisAlignment.start,

                        children: [

                          Text(
                            "Verified identity required",
                            style: TextStyle(
                              fontWeight: FontWeight.w700,
                            ),
                          ),

                          SizedBox(height: 4),

                          Text(
                            "Every profile is ID-checked before requesting a Coffee Connect.",
                            style: TextStyle(
                              color: AppColors.inkSoft,
                              height: 1.5,
                            ),
                          ),

                        ],

                      ),

                    )

                  ],

                ),

              ),

              const Spacer(),

              PrimaryButton(
                text: "Continue",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const HomeScreen(),
                    ),
                  );
                },
              ),

            ],

          ),

        ),

      ),

    );

  }

}