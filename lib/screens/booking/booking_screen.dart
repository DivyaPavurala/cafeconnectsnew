import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../core/widgets/primary_button.dart';
import '../../screens/payment/payment_screen.dart';
class BookingScreen extends StatefulWidget {
  const BookingScreen({super.key});

  @override
  State<BookingScreen> createState() => _BookingScreenState();
}

class _BookingScreenState extends State<BookingScreen> {

  String selectedCafe = "Third Wave Coffee";
  String selectedTime = "5:30 PM";
  String selectedDate = "20 Jul 2026";

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      backgroundColor: AppColors.paper,

      appBar: AppBar(

        backgroundColor: Colors.transparent,

        elevation: 0,

        title: const Text(
          "Book Coffee",
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

              const Text(
                "Select Café",
                style: TextStyle(
                  fontFamily: "Fraunces",
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 18),

              DropdownButtonFormField<String>(

                value: selectedCafe,

                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),

                items: const [

                  DropdownMenuItem(
                    value: "Third Wave Coffee",
                    child: Text("Third Wave Coffee"),
                  ),

                  DropdownMenuItem(
                    value: "Roast 24",
                    child: Text("Roast 24"),
                  ),

                  DropdownMenuItem(
                    value: "Starbucks",
                    child: Text("Starbucks"),
                  ),

                ],

                onChanged: (value){

                  setState(() {

                    selectedCafe = value!;

                  });

                },

              ),

              const SizedBox(height: 28),

              const Text(
                "Date",
                style: TextStyle(
                  fontFamily: "Fraunces",
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 14),

              ListTile(

                tileColor: AppColors.white,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),

                leading: const Icon(Icons.calendar_month),

                title: Text(selectedDate),

                trailing: const Icon(Icons.arrow_forward_ios),

                onTap: () {},

              ),

              const SizedBox(height: 28),

              const Text(
                "Time",
                style: TextStyle(
                  fontFamily: "Fraunces",
                  fontSize: 22,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 14),

              ListTile(

                tileColor: AppColors.white,

                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16),
                ),

                leading: const Icon(Icons.access_time),

                title: Text(selectedTime),

                trailing: const Icon(Icons.arrow_forward_ios),

                onTap: () {},

              ),

              const Spacer(),

              PrimaryButton(

                text: "Continue",

                onPressed: () {

                  Navigator.push(

                    context,

                    MaterialPageRoute(

                      builder: (_) => const PaymentScreen(),

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