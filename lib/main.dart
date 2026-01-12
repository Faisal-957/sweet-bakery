import 'package:flutter/material.dart';
import 'package:sweetbakery/ui/screens/login_screen.dart';
import 'package:sweetbakery/ui/screens/signup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: SignupScreen());
  }
}
