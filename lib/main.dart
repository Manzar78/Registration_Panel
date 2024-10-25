import 'package:flutter/material.dart';

import 'package:user_registration_panel/screens/login_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: GradientBackground(child: SignInScreen()));
  }
}

class GradientBackground extends StatelessWidget {
  final Widget child;

  const GradientBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Container(
          // Apply the gradient background here
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xFF6ACDE2), // Light shade at the top
                Color(0xFF0093A0), // Darker shade at the bottom
              ],
            ),
          ),
          // The child widget, which can be any screen in the app
          child: child,
        ),
      ),
    );
  }
}
