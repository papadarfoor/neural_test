import 'package:flutter/material.dart';
import 'package:neural_test/view/onboarding.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: 'Neural Trainer',
      theme: ThemeData(
          bottomSheetTheme: BottomSheetThemeData(
            backgroundColor: Colors.black.withOpacity(0)),
      ),
      home: const OnboardingScreen(),
    );
  }
}


