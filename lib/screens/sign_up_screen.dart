import 'package:flutter/material.dart';
import 'package:user_registration_panel/utils/ui_helper.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const CustomTextField(
                hintText: "Name",
                icon: Icons.man_sharp,
              ),
              const SizedBox(height: 10),
              const CustomTextField(
                hintText: "Email",
                icon: Icons.mail_outline_sharp,
              ),
              const CustomTextField(
                hintText: "Password",
                icon: Icons.lock,
              ),
              const CustomTextField(
                hintText: "Confirm Password",
                icon: Icons.lock,
              ),
              Container(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                    colors: [
                      Color(0xFF005F6B), // Darker teal
                      Color(0xFF6ACDE2), // Lighter teal
                    ],
                    begin: Alignment.centerLeft,
                    end: Alignment.centerRight,
                  ),
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2), // Soft shadow
                      spreadRadius: 1,
                      blurRadius: 8,
                      offset: const Offset(0, 4), // Shadow position
                    ),
                  ],
                ),
                child: ElevatedButton(
                  onPressed: () {
                    // Button action
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors
                        .transparent, // Make button background transparent
                    shadowColor: Colors.transparent, // No internal shadow
                    padding: const EdgeInsets.symmetric(
                        vertical: 15, horizontal: 30),
                    shape: RoundedRectangleBorder(
                      borderRadius:
                          BorderRadius.circular(12), // Same as container radius
                    ),
                  ),
                  child: const Text(
                    'SIGN UP', // Button text
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.white, // White text color
                      letterSpacing: 1.5, // Spacing between letters
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
