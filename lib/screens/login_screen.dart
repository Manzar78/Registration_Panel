import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:user_registration_panel/screens/sign_up_screen.dart';
import 'package:user_registration_panel/utils/ui_helper.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(),
          padding: const EdgeInsets.all(35),
          child: DefaultTabController(
            length: 2, // Number of tabs
            child: Column(
              children: [
                // Dynamically change the image based on the selected tab
                SizedBox(
                  width: 400,
                  height: 200, // Fixed height for the image container
                  child: TabBarView(
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      Image.asset(
                        'assets/file.png', // Image for Sign In
                        fit: BoxFit.contain,
                      ),
                      Image.asset(
                        'assets/file1.png', // Image for Sign Up
                        fit: BoxFit.contain,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 25),
                Container(
                  decoration: BoxDecoration(
                    color: const Color.fromRGBO(64, 124, 135, 0.3),
                    borderRadius: BorderRadius.circular(25.0), // Rounded edges
                  ),
                  child: TabBar(
                    indicator: BoxDecoration(
                      color: Colors.white, // Color for the selected tab
                      borderRadius: BorderRadius.circular(25.0),
                    ),
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelColor: Colors.black, // Selected tab text color
                    unselectedLabelColor: Colors.black45, // Unselected text
                    tabs: const [
                      Tab(text: "Sign In"),
                      Tab(text: "Sign Up"),
                    ],
                  ),
                ),
                const SizedBox(height: 20), // Space between TabBar and content

                // Use SizedBox with a fixed height for the background container
                SizedBox(
                  height: 350, // Fixed height for the entire TabBarView area
                  child: Container(
                    width: double.infinity, // Full width of the screen
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(
                          15), // Rounded edges for content container
                    ),
                    child: TabBarView(
                      children: [
                        // Sign In content
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const CustomTextField(
                                hintText: "Email",
                                icon: Icons.email,
                              ),
                              const SizedBox(height: 10),
                              const CustomTextField(
                                hintText: "Password",
                                icon: Icons.password,
                              ),
                              const SizedBox(
                                height: 15,
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
                                  borderRadius: BorderRadius.circular(
                                      12), // Rounded corners
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black
                                          .withOpacity(0.2), // Soft shadow
                                      spreadRadius: 1,
                                      blurRadius: 8,
                                      offset:
                                          const Offset(0, 4), // Shadow position
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
                                    shadowColor: Colors
                                        .transparent, // No internal shadow
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 15, horizontal: 30),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(
                                          12), // Same as container radius
                                    ),
                                  ),
                                  child: const Text(
                                    'SIGN IN', // Button text
                                    style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 16,
                                      color: Colors.white, // White text color
                                      letterSpacing:
                                          1.5, // Spacing between letters
                                    ),
                                  ),
                                ),
                              ),
                              TextButton(
                                  style: const ButtonStyle(
                                    splashFactory: NoSplash.splashFactory,
                                  ),
                                  onPressed: () {},
                                  child: const Text(
                                    "Forget Password",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w800,
                                        fontSize: 14,
                                        decoration: TextDecoration.underline,
                                        color: Colors.blueGrey),
                                  )),
                              SizedBox(
                                height: 25,
                                child: Center(child: Text('OR')),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  InkWell(
                                    onTap: () {
                                      if (Platform.isAndroid) {
                                        SystemNavigator.pop();
                                      }
                                    },
                                    child:
                                        Image.asset('assets/google_icon.png'),
                                  ),
                                  SizedBox(
                                    width: 60,
                                  ),
                                  Image.asset('assets/fb_icon.png')
                                ],
                              )
                            ],
                          ),
                        ),
                        // Sign Up content
                        Container(
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(40)),
                            child: SignUpScreen()),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
