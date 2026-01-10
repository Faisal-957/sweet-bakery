import 'package:flutter/material.dart';
import 'package:sweetbakery/ui/screens/onboard_screen.dart';
import 'package:sweetbakery/ui/screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OnboardScreen(),
    );
  }
}
