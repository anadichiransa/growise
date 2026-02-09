import 'package:flutter/material.dart';

void main() {
  runApp(const GrowiseApp());
}

class GrowiseApp extends StatelessWidget {
  const GrowiseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Growise',
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: const Color(
          0xFF130B2B,
        ), // Your Figma Dark Purple
      ),
      home: const OnboardingScreen(),
    );
  }
}

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Padding adds space around the edges so the text doesn't touch the screen sides
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // 1. The Logo Area (We will add the image here later)
            const Center(
              child: CircleAvatar(
                radius: 60,
                backgroundColor: Color(0xFF3B1E54), // Darker purple circle
                child: Icon(
                  Icons.child_care,
                  size: 60,
                  color: Color(0xFFE2A673),
                ),
              ),
            ),
            const SizedBox(height: 40), // Spacer
            // 2. The Small App Name
            const Text(
              'GROWISE',
              style: TextStyle(
                color: Color(0xFFE2A673),
                letterSpacing: 2,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),

            // 3. The Main Title
            const Text(
              'Nurturing\nThe Future',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.white,
                height: 1.1,
              ),
            ),
            const SizedBox(height: 20),

            // 4. The Subtitle
            Text(
              'Your digital companion for tracking development, health, and happiness for every child.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 16,
                color: Colors.white.withOpacity(0.7),
              ),
            ),
            const SizedBox(height: 60),

            // 5. The "Get Started" Button
            Container(
              width: double.infinity, // Makes button full width
              height: 60,
              decoration: BoxDecoration(
                color: const Color(0xFFE2A673), // The Peach/Gold color
                borderRadius: BorderRadius.circular(30),
              ),
              child: const Center(
                child: Text(
                  'Get Started →',
                  style: TextStyle(
                    color: Color(0xFF130B2B),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),

            // 6. The Login Text
            const Text(
              'Existing user? Log In',
              style: TextStyle(color: Colors.white54),
            ),
          ],
        ),
      ),
    );
  }
}
