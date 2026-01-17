import 'package:flutter/material.dart';

class CustomHome extends StatelessWidget {
  final String image;
  final String title;
  final String buttonText;
  final String description;

  CustomHome({
    required this.image,
    required this.title,
    required this.buttonText,
    required this.description,
  });
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image, height: 250),
        SizedBox(height: 20),
        Text(
          title,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        FilledButton(
          onPressed: () {},
          child: Text(
            buttonText,
            style: TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
        ),
        Text(
          description,
          style: TextStyle(fontSize: 16),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
