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
      theme: ThemeData(
        brightness: Brightness.dark,
        // Using your #210F37 color
        scaffoldBackgroundColor: const Color(0xFF210F37),
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
      body: Stack(
        children: [
          // Background Glow/Shapes
          Center(
            child: Opacity(
              opacity: 0.5,
              child: Image.asset('assets/images/background_shapes.png'),
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // 1. The Baby Icon (Centered in a circle)
                Container(
                  padding: const EdgeInsets.all(40),
                  decoration: const BoxDecoration(
                    color: Color(0xFF4F1C51), // Your rgb(79, 28, 81)
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset('assets/images/baby_icon.png', height: 80),
                ),
                const SizedBox(height: 50),

                // 2. The Small App Name
                const Text(
                  'GROWISE',
                  style: TextStyle(
                    color: Color(0xFFDCA06D), // Your rgb(220, 160, 109)
                    letterSpacing: 2,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 10),

                // 3. The Bold Main Title
                const Text(
                  'Nurturing\nThe Future',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    height: 1.1,
                  ),
                ),
                const SizedBox(height: 20),

                // 4. The Subtitle
                const Text(
                  'Your digital companion for tracking development, health, and happiness for every child.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16, color: Colors.white70),
                ),
                const SizedBox(height: 80),

                // 5. The "Get Started" Button
                GestureDetector(
                  onTap: () => print("Navigate to Signup"),
                  child: Container(
                    width: double.infinity,
                    height: 55,
                    decoration: BoxDecoration(
                      color: const Color(0xFFDCA06D),
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Get Started',
                          style: TextStyle(
                            color: Color(0xFF210F37),
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(width: 10),
                        Icon(Icons.arrow_forward, color: Color(0xFF210F37)),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 25),

                // 6. Login Text
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text(
                      "Existing user? ",
                      style: TextStyle(color: Colors.white54),
                    ),
                    GestureDetector(
                      onTap: () => print("Navigate to Login"),
                      child: const Text(
                        "Log In",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
