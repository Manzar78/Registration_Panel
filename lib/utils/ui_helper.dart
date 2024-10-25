import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText; // Property to accept hint text
  final TextEditingController? controller;
  final IconData? icon; // Optional controller

  const CustomTextField({
    super.key,
    required this.hintText,
    this.controller,
    this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.only(top: 0, bottom: 6),
      decoration: BoxDecoration(
          //borderRadius: BorderRadius.circular(30), // Rounded corners
          ),
      child: TextField(
        controller: controller, // Assign the controller if provided
        decoration: InputDecoration(
          hintText: hintText, // Set the hint text
          //hintTextDirection: TextDirection.ltr, // Text direction for hint
          border: InputBorder.none, // No border for the hint
          prefixIcon: icon != null
              ? Icon(
                  icon,
                  color: Colors.black,
                ) // Add icon if provided
              : null, // No icon if not provided
        ),
        style: const TextStyle(
          color: Color.fromARGB(255, 4, 6, 7), // Text color
        ),
      ),
    );
  }
}
