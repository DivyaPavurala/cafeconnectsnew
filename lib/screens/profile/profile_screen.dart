import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/widgets/primary_button.dart';
import '../../screens/booking/booking_screen.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.paper,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Profile",
          style: TextStyle(
            fontFamily: "Fraunces",
            color: AppColors.ink,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [

              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: AppColors.mustard,
                  child: const Text(
                    "A",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              const Center(
                child: Text(
                  "Aarav Sharma",
                  style: TextStyle(
                    fontFamily: "Fraunces",
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),

              const SizedBox(height: 6),

              const Center(
                child: Text(
                  "Software Engineer • Hyderabad",
                  style: TextStyle(
                    color: AppColors.inkSoft,
                  ),
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "About",
                style: TextStyle(
                  fontFamily: "Fraunces",
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 12),

              const Text(
                "Passionate about startups, books, technology and meaningful conversations over coffee. Always excited to meet new people.",
                style: TextStyle(
                  color: AppColors.inkSoft,
                  height: 1.7,
                ),
              ),

              const SizedBox(height: 30),

              const Text(
                "Interests",
                style: TextStyle(
                  fontFamily: "Fraunces",
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 12),

              Wrap(
                spacing: 10,
                runSpacing: 10,
                children: const [

                  Chip(label: Text("Technology")),

                  Chip(label: Text("Books")),

                  Chip(label: Text("Travel")),

                  Chip(label: Text("Coffee")),

                  Chip(label: Text("Fitness")),

                ],
              ),

              const SizedBox(height: 40),

              PrimaryButton(
                text: "Book Coffee Meeting",
                onPressed: () {

                  Navigator.push(

                    context,

                    MaterialPageRoute(

                      builder: (_) => const BookingScreen(),

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
                  child: const Text("Back"),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}