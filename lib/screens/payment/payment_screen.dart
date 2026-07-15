import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/widgets/primary_button.dart';
import '../ticket/ticket_screen.dart';

class PaymentScreen extends StatelessWidget {
  const PaymentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.paper,

      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          "Payment",
          style: TextStyle(
            fontFamily: "Fraunces",
            color: AppColors.ink,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(22),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,

          children: [

            const Text(
              "Booking Summary",
              style: TextStyle(
                fontFamily: "Fraunces",
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),

            const SizedBox(height: 20),

            Card(
              elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(18),
              ),
              child: const Padding(
                padding: EdgeInsets.all(18),
                child: Column(
                  children: [

                    ListTile(
                      leading: Icon(Icons.local_cafe),
                      title: Text("Third Wave Coffee"),
                      subtitle: Text("20 Jul 2026 • 5:30 PM"),
                    ),

                    Divider(),

                    ListTile(
                      title: Text("Coffee Connect"),
                      trailing: Text("₹350"),
                    ),

                    ListTile(
                      title: Text("Convenience Fee"),
                      trailing: Text("₹20"),
                    ),

                    Divider(),

                    ListTile(
                      title: Text(
                        "Total",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      trailing: Text(
                        "₹370",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),

                  ],
                ),
              ),
            ),

            const Spacer(),

            PrimaryButton(
              text: "Pay ₹370",
              onPressed: () {

                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (_) => const TicketScreen(),
                  ),
                );

              },
            ),

          ],
        ),
      ),
    );
  }
}