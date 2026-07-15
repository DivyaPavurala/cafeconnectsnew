import 'package:flutter/material.dart';
import 'interest_screen.dart';
import '../../core/constants/app_colors.dart';
import '../../core/constants/app_text_styles.dart';
import '../../core/widgets/ghost_button.dart';
import '../../core/widgets/primary_button.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.paper,
      body: SafeArea(
        child: Column(
          children: [

            /// HERO
            Expanded(
              flex: 6,
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(
                  horizontal: 28,
                  vertical: 32,
                ),
                decoration: const BoxDecoration(
                  color: AppColors.espresso,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(40),
                    bottomRight: Radius.circular(40),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    const Text(
                      "☕ CAFE CONNECTS· HYDERABAD",
                      style: TextStyle(
                        fontFamily: "IBMPlexMono",
                        color: AppColors.mustard,
                        fontSize: 18,
                        letterSpacing: 1.2,
                      ),
                    ),

                    const SizedBox(height: 22),

                    Text(
                      "Gather. Connect. \n Experience.",
                      style: AppTextStyles.display.copyWith(
                        color: AppColors.paper,
                        fontSize: 42,
                      ),
                    ),

                    const SizedBox(height: 16),

                    Text(
                      "Coffee chats + curated group events with real, verified people near you.",
                      style: AppTextStyles.body.copyWith(
                        color: const Color(0xffD8C4AC),
                        fontSize: 18,
                      ),
                    ),
                  ],
                ),
              ),
            ),

            /// BUTTONS
            Expanded(
              flex: 4,
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    PrimaryButton(
                      text: "Get Started",
                      onPressed: () {

                        Navigator.push(

                          context,

                          MaterialPageRoute(

                            builder: (_) => const InterestScreen(),

                          ),

                        );

                      },
                    ),

                    const SizedBox(height: 10),

                    GhostButton(
                      text: "I already have an account",
                      onPressed: () {},
                    ),

                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}