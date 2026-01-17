import 'package:flutter/material.dart';
import 'package:sweetbakery/core/constant/text_style.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Crave Click Enjoy\nOrder & Eat",
            style: style42.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20),
          TextFormField(
            decoration: InputDecoration(
              fillColor: Color(0xffCBC8E7),
              filled: true,
              hintStyle: TextStyle(color: Colors.grey[600], fontSize: 20),
              hintText: "Search your food...",
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(20),
              ),
              prefixIcon: Icon(Icons.search),
            ),
          ),
          SizedBox(height: 20),
          Text("Discover food", style: style20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(" Vanilla", style: style16),
              Text(" stawberry", style: style16),
              Text(" chocolate", style: style16),
            ],
          ),
        ],
      ),
    );
  }
}
