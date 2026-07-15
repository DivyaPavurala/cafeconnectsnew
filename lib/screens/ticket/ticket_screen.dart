import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/widgets/primary_button.dart';
import 'package:cafeconnects/screens/feedback/feedback_screen.dart';
class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.paper,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Booking Confirmed",
          style: TextStyle(
            fontFamily: "Fraunces",
            color: AppColors.ink,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(22),

        child: Column(
          children: [

            const Icon(
              Icons.check_circle,
              color: Colors.green,
              size: 80,
            ),

            const SizedBox(height: 16),

            const Text(
              "Coffee Connect Confirmed!",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontFamily: "Fraunces",
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 10),

            const Text(
              "Your booking has been confirmed.",
              style: TextStyle(
                color: AppColors.inkSoft,
              ),
            ),

            const SizedBox(height: 30),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(20),

              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: AppColors.border,
                ),
              ),

              child: Column(
                children: [

                  const Icon(
                    Icons.qr_code,
                    size: 140,
                  ),

                  const SizedBox(height: 20),

                  const Divider(),

                  const ListTile(
                    leading: Icon(Icons.person),
                    title: Text("Match"),
                    subtitle: Text("Aarav Sharma"),
                  ),

                  const ListTile(
                    leading: Icon(Icons.local_cafe),
                    title: Text("Cafe"),
                    subtitle: Text("Third Wave Coffee"),
                  ),

                  const ListTile(
                    leading: Icon(Icons.calendar_today),
                    title: Text("Date"),
                    subtitle: Text("20 Jul 2026"),
                  ),

                  const ListTile(
                    leading: Icon(Icons.access_time),
                    title: Text("Time"),
                    subtitle: Text("5:30 PM"),
                  ),

                  const ListTile(
                    leading: Icon(Icons.confirmation_number),
                    title: Text("Booking ID"),
                    subtitle: Text("#CC20260720001"),
                  ),

                ],
              ),
            ),

            const SizedBox(height: 30),

            PrimaryButton(
              text: "Done",
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const FeedbackScreen(),
                  ),
                );
              },
            ),

            const SizedBox(height: 12),

            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text("Download Ticket"),
              ),
            ),

          ],
        ),
      ),
    );
  }
}