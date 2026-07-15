import 'package:flutter/material.dart';

import 'core/theme/app_theme.dart';
import 'screens/splash/splash_screen.dart';

class CafeConnectsApp extends StatelessWidget {
  const CafeConnectsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Cafe Connects',
      theme: AppTheme.lightTheme,
      home: const SplashScreen(),
    );
  }
}