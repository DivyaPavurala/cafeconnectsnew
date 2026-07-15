import 'package:flutter/material.dart';

import '../../core/constants/app_colors.dart';
import '../../screens/matching/match_found_screen.dart';

class MatchingScreen extends StatefulWidget {
  const MatchingScreen({super.key});

  @override
  State<MatchingScreen> createState() => _MatchingScreenState();
}

class _MatchingScreenState extends State<MatchingScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    )..repeat(reverse: true);

    Future.delayed(const Duration(seconds: 3), () {
      if (!mounted) return;

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (_) => const MatchFoundScreen(),
        ),
      );
    });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.paper,
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Finding your Coffee Match",
                  style: TextStyle(
                    fontFamily: "Fraunces",
                    fontSize: 30,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Matching you with someone who shares your interests.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: AppColors.inkSoft,
                    height: 1.6,
                  ),
                ),
                const SizedBox(height: 50),
                AnimatedBuilder(
                  animation: _controller,
                  builder: (_, child) {
                    return Transform.scale(
                      scale: 0.9 + (_controller.value * 0.2),
                      child: child,
                    );
                  },
                  child: Container(
                    width: 170,
                    height: 170,
                    decoration: const BoxDecoration(
                      color: AppColors.espresso,
                      shape: BoxShape.circle,
                    ),
                    child: const Center(
                      child: Icon(
                        Icons.local_cafe,
                        size: 80,
                        color: AppColors.paper,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 50),
                const CircularProgressIndicator(),
                const SizedBox(height: 20),
                const Text(
                  "Searching nearby...",
                  style: TextStyle(
                    fontFamily: "Inter",
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}