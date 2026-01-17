import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:sweetbakery/firebase_options.dart';
import 'package:sweetbakery/ui/screens/on_board_screen/home_screen/home.dart';

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
      home: Home(), // Tumhara signup screen
    );
  }
}
