import 'package:flutter/material.dart';
import 'package:sweetbakery/core/constant/string.dart';
import 'package:sweetbakery/core/constant/text_style.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset("$staticAssets/logo.png", scale: 3)),
            Center(
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Welcome \n ",
                      style: style42.copyWith(color: Color(0xff872626)),
                    ),
                    TextSpan(
                      text: "Sweet bakery",
                      style: style32.copyWith(color: Color(0xff872626)),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Login\n",
                    style: style32.copyWith(fontWeight: FontWeight.bold),
                  ),
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
            SizedBox(height: 20),
            Text("Email", style: style19),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffCBC8E7),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Enter your email',
              ),
            ),

            SizedBox(height: 20),
            Text("Password", style: style19),
            TextField(
              obscureText: true,
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffCBC8E7),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Enter your password',
              ),
            ),
            Text("forgot password?", style: style16),
            SizedBox(height: 20),
            SizedBox(
              width: 250,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color(0xff872626),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                ),
                child: Text(
                  "Login",
                  style: style19.copyWith(color: Colors.white),
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Don't have an account? ",
                    style: style16.copyWith(color: Colors.black),
                  ),
                  TextSpan(
                    text: "create account",
                    style: style16.copyWith(
                      color: Color.fromARGB(255, 48, 14, 197),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
