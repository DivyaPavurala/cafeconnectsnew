import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class MatchesScreen extends StatelessWidget {
  const MatchesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.paper,

      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: const Text(
          "Your Matches",
          style: TextStyle(
            fontFamily: "Fraunces",
            color: AppColors.ink,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),

      body: ListView(
        padding: const EdgeInsets.all(20),
        children: const [

          MatchCard(
            name: "Aarav Sharma",
            profession: "Software Engineer",
            interests: "Technology • Coffee • Travel",
          ),

          SizedBox(height: 16),

          MatchCard(
            name: "Priya Reddy",
            profession: "UI Designer",
            interests: "Books • Startups • Art",
          ),

          SizedBox(height: 16),

          MatchCard(
            name: "Rahul Verma",
            profession: "Product Manager",
            interests: "Fitness • Movies • Food",
          ),

        ],
      ),
    );
  }
}

class MatchCard extends StatelessWidget {

  final String name;
  final String profession;
  final String interests;

  const MatchCard({
    super.key,
    required this.name,
    required this.profession,
    required this.interests,
  });

  @override
  Widget build(BuildContext context) {

    return Card(

      elevation: 1,

      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20),
      ),

      child: Padding(

        padding: const EdgeInsets.all(18),

        child: Column(

          children: [

            CircleAvatar(
              radius: 34,
              backgroundColor: AppColors.mustard,
              child: Text(
                name[0],
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 14),

            Text(
              name,
              style: const TextStyle(
                fontFamily: "Fraunces",
                fontWeight: FontWeight.bold,
                fontSize: 24,
              ),
            ),

            const SizedBox(height: 6),

            Text(
              profession,
              style: const TextStyle(
                color: AppColors.inkSoft,
              ),
            ),

            const SizedBox(height: 12),

            Text(
              interests,
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 18),

            SizedBox(
              width: double.infinity,
              child: ElevatedButton(

                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.espresso,
                  foregroundColor: Colors.white,
                ),

                onPressed: () {},

                child: const Text("View Profile"),

              ),
            ),

          ],
        ),
      ),
    );
  }
}