// This is a Flutter portfolio app (mobile + web ready)
// Replace text & images with your own

import 'package:flutter/material.dart';

void main() {
  runApp(const MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Faisal Khan | Flutter Developer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('My Portfolio'), centerTitle: true),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 60,
              backgroundImage: AssetImage('assets/profile.png'),
            ),
            const SizedBox(height: 16),
            const Text(
              'Faisal Khan',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 6),
            const Text(
              'Flutter Developer',
              style: TextStyle(fontSize: 18, color: Colors.grey),
            ),
            const SizedBox(height: 20),

            // About Me
            sectionTitle('About Me'),
            const Text(
              'I am a Flutter developer passionate about building clean, scalable, and high-performance mobile applications using Flutter and Firebase.',
              textAlign: TextAlign.center,
            ),

            const SizedBox(height: 30),

            // Skills
            sectionTitle('Skills'),
            Wrap(
              spacing: 8,
              runSpacing: 8,
              children: skills.map((skill) {
                return Chip(label: Text(skill));
              }).toList(),
            ),

            const SizedBox(height: 30),

            // Projects
            sectionTitle('Projects'),
            Column(
              children: projects.map((project) {
                return Card(
                  elevation: 3,
                  margin: const EdgeInsets.symmetric(vertical: 8),
                  child: ListTile(
                    title: Text(project.title),
                    subtitle: Text(project.description),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  ),
                );
              }).toList(),
            ),

            const SizedBox(height: 30),

            // Contact
            sectionTitle('Contact'),
            const ListTile(
              leading: Icon(Icons.email),
              title: Text('faisal@gmail.com'),
            ),
            const ListTile(
              leading: Icon(Icons.phone),
              title: Text('+92 300 0000000'),
            ),
            const ListTile(
              leading: Icon(Icons.link),
              title: Text('github.com/faisalkhan'),
            ),
          ],
        ),
      ),
    );
  }
}

Widget sectionTitle(String text) {
  return Padding(
    padding: const EdgeInsets.only(bottom: 12),
    child: Text(
      text,
      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    ),
  );
}

// Skills Data
List<String> skills = [
  'Flutter',
  'Dart',
  'Firebase',
  'REST APIs',
  'Git & GitHub',
];

// Project Model
class Project {
  final String title;
  final String description;

  Project({required this.title, required this.description});
}

// Projects Data
List<Project> projects = [
  Project(
    title: 'Sweet Bakery App',
    description: 'E-commerce app built with Flutter & Firebase',
  ),
  Project(
    title: 'Fitness Tracker',
    description: 'Workout & health tracking application',
  ),
  Project(
    title: 'Portfolio App',
    description: 'Personal portfolio built using Flutter',
  ),
];
