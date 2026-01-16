import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sweetbakery/firebase_options.dart';
import 'package:sweetbakery/ui/screens/login_screen.dart';
import 'package:sweetbakery/ui/screens/portfolio.dart';
import 'package:sweetbakery/ui/screens/signup_screen.dart';

import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); // Important
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginScreen(), // Tumhara signup screen
    );
  }
}
