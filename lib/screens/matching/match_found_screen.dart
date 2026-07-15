import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/widgets/primary_button.dart';
import '../profile/profile_screen.dart';

class MatchFoundScreen extends StatelessWidget {
  const MatchFoundScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.paper,

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),

          child: Column(
            children: [

              const SizedBox(height: 30),

              const Icon(
                Icons.favorite,
                size: 80,
                color: Colors.red,
              ),

              const SizedBox(height: 20),

              const Text(
                "It's a Match!",
                style: TextStyle(
                  fontFamily: "Fraunces",
                  fontSize: 34,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                "We found someone who shares your interests.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: AppColors.inkSoft,
                  fontSize: 16,
                ),
              ),

              const SizedBox(height: 40),

              CircleAvatar(
                radius: 60,
                backgroundColor: AppColors.mustard,
                child: const Text(
                  "A",
                  style: TextStyle(
                    fontSize: 42,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              const Text(
                "Aarav Sharma",
                style: TextStyle(
                  fontFamily: "Fraunces",
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 6),

              const Text(
                "Software Engineer • Hyderabad",
                style: TextStyle(
                  color: AppColors.inkSoft,
                ),
              ),

              const SizedBox(height: 20),

              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: const [

                  Chip(label: Text("Technology")),

                  Chip(label: Text("Coffee")),

                  Chip(label: Text("Books")),

                  Chip(label: Text("Travel")),

                ],
              ),

              const Spacer(),

              PrimaryButton(
                text: "View Profile",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (_) => const ProfileScreen(),
                    ),
                  );
                },
              ),

              const SizedBox(height: 12),

              SizedBox(
                width: double.infinity,
                child: OutlinedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text("Find Another Match"),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}