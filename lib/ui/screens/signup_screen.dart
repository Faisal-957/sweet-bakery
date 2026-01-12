import 'package:flutter/material.dart';
import 'package:sweetbakery/core/constant/string.dart';
import 'package:sweetbakery/core/constant/text_style.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(child: Image.asset("$staticAssets/logo.png", scale: 4)),
            Center(
              child: Text(
                "Welcome  ",
                style: style42.copyWith(color: Color(0xff872626)),
              ),
            ),
            Center(
              child: Text(
                "Sweet Bakery",
                style: style42.copyWith(
                  color: Color(0xff872626),
                  fontWeight: FontWeight.w500,
                  fontSize: 24,
                ),
              ),
            ),

            SizedBox(height: 20),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Sign Up\n",
                    style: style32.copyWith(fontWeight: FontWeight.bold),
                  ),
                  TextSpan(
                    text: "Please fill the form to create an account",
                    style: style19.copyWith(
                      color: Color(0xff872626),
                      fontWeight: FontWeight.w100,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 20),
            Text("Name", style: style19.copyWith(fontSize: 24)),
            TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color(0xffCBC8E7),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide.none,
                ),
                hintText: 'Enter your name',
              ),
            ),

            SizedBox(height: 20),
            Text("Email", style: style19.copyWith(fontSize: 24)),
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
            Text("Password", style: style19.copyWith(fontSize: 24)),
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

            SizedBox(height: 20),
            Center(
              child: SizedBox(
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
                    "sign Up",
                    style: style19.copyWith(color: Colors.white),
                  ),
                ),
              ),
            ),
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: "Allready have an account? ",
                    style: style16.copyWith(color: Colors.black),
                  ),
                  TextSpan(
                    text: "login",
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
