import 'package:flutter/material.dart';

// Reusable text field, so we don't repeat the same styling on every page
class MyTextField extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool hideText; // true for passwords
  final TextEditingController controller;

  const MyTextField({
    super.key,
    required this.label,
    required this.icon,
    required this.controller,
    this.hideText = false,
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: hideText,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        labelText: label,
        labelStyle: const TextStyle(color: Colors.white54),
        prefixIcon: Icon(icon, color: Colors.white54),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white38),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.white, width: 2),
        ),
      ),
    );
  }
}
