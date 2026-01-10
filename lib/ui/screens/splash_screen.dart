import 'dart:async';

import 'package:flutter/material.dart';
import 'package:sweetbakery/core/constant/string.dart';
import 'package:sweetbakery/core/constant/text_style.dart';
import 'package:sweetbakery/ui/screens/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    // Timer(const Duration(seconds: 60), () {
    //   Navigator.pushReplacement(
    //     context,
    //     MaterialPageRoute(builder: (context) => HomeScreen()),
    //   );
    // });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset("$staticAssets/logo.png", scale: 3),
            Text("Sweet Baker", style: style42),
            Text("Baked with Love, Served with Care", style: style12),
          ],
        ),
      ),
    );
  }
}
