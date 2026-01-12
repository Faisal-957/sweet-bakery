import 'package:flutter/material.dart';
import 'package:sweetbakery/core/constant/string.dart';
import 'package:sweetbakery/core/constant/text_style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset("$staticAssets/logo.png", scale: 3),
          Text(" Welcome \nSweet Bakery!", style: style19),
          SizedBox(height: 20),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(text: "Login\n", style: style32),
                TextSpan(
                  text: "Enter your credentials to connect",
                  style: style19.copyWith(
                    color: Color(0xff872626),
                    fontWeight: FontWeight.w100,
                  ),
                ),
              ],
            ),
          ),
          Text("Email", style: style19),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter your email',
            ),
          ),
          Text("Password", style: style19),
          TextField(
            obscureText: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Enter your password',
            ),
          ),
        ],
      ),
    );
  }
}
