import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:sweetbakery/ui/screens/on_board_screen/onboard_screen.dart';
import 'package:sweetbakery/core/constant/string.dart';
import 'package:sweetbakery/core/constant/text_style.dart';
import 'package:sweetbakery/ui/screens/singup_login_screen/signup_screen.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isLoading = false;

  Future<void> login() async {
    setState(() {
      isLoading = true;
    });

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: emailController.text,
        password: passwordController.text,
      );

      // Login success → Navigate
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => OnboardScreen()),
      );
    } catch (e) {
      // Login failed → Show error
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("Login failed: ${e.toString()}")));
    }

    setState(() {
      isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Text("Email", style: style19.copyWith(fontSize: 24)),
            TextField(
              controller: emailController,
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
              controller: passwordController,
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
            SizedBox(height: 10),
            Text("forgot password?", style: style16),
            SizedBox(height: 20),
            Center(
              child: SizedBox(
                width: 250,
                child: isLoading
                    ? CircularProgressIndicator()
                    : ElevatedButton(
                        onPressed: login,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xff872626),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          padding: EdgeInsets.symmetric(
                            horizontal: 50,
                            vertical: 15,
                          ),
                        ),
                        child: Text(
                          "Login",
                          style: style19.copyWith(color: Colors.white),
                        ),
                      ),
              ),
            ),
            SizedBox(height: 10),
            GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignupScreen()),
                );
              },
              child: RichText(
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
            ),
          ],
        ),
      ),
    );
  }
}
