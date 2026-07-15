import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';

class MyProfileScreen extends StatelessWidget {
  const MyProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: AppColors.paper,

      appBar: AppBar(

        backgroundColor: Colors.transparent,

        elevation: 0,

        centerTitle: true,

        title: const Text(
          "My Profile",
          style: TextStyle(
            fontFamily: "Fraunces",
            color: AppColors.ink,
            fontWeight: FontWeight.bold,
            fontSize: 28,
          ),
        ),
      ),

      body: SingleChildScrollView(

        padding: const EdgeInsets.all(24),

        child: Column(

          children: [

            const CircleAvatar(
              radius: 60,
              backgroundColor: AppColors.mustard,
              child: Text(
                "D",
                style: TextStyle(
                  fontSize: 40,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),

            const SizedBox(height: 20),

            const Text(
              "Divya",
              style: TextStyle(
                fontFamily: "Fraunces",
                fontWeight: FontWeight.bold,
                fontSize: 30,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              "Coffee Enthusiast • Hyderabad",
              style: TextStyle(
                color: AppColors.inkSoft,
              ),
            ),

            const SizedBox(height: 30),

            Card(
              child: ListTile(
                leading: const Icon(Icons.person),
                title: const Text("Edit Profile"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {},
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.favorite),
                title: const Text("My Matches"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {},
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.confirmation_number),
                title: const Text("My Tickets"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {},
              ),
            ),

            Card(
              child: ListTile(
                leading: const Icon(Icons.settings),
                title: const Text("Settings"),
                trailing: const Icon(Icons.arrow_forward_ios),
                onTap: () {},
              ),
            ),

          ],
        ),
      ),
    );
  }
}