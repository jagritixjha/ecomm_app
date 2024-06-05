import 'package:flutter/material.dart';
import 'package:wildlife/views/onboarding_screen.dart';

void main() {
  runApp(const WildLife());
}

class WildLife extends StatelessWidget {
  const WildLife({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
