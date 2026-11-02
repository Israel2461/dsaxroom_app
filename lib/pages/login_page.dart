import 'package:flutter/material.dart';

import '../widgets/my_text_field.dart';
import '../widgets/my_button.dart';
import 'register_page.dart';
import 'home_page.dart';

// Login Page
class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  // Controllers let us read what the user typed
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(28),
            child: Column(
              children: [
                // Our brand logo, loaded from the assets folder
                Image.asset('assets/logo.png', height: 110),
                const SizedBox(height: 20),
                const Text(
                  'Welcome Back',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Login to your account',
                  style: TextStyle(color: Colors.white54),
                ),
                const SizedBox(height: 40),

                MyTextField(
                  label: 'Email',
                  icon: Icons.email_outlined,
                  controller: emailController,
                ),
                const SizedBox(height: 16),
                MyTextField(
                  label: 'Password',
                  icon: Icons.lock_outline,
                  controller: passwordController,
                  hideText: true,
                ),
                const SizedBox(height: 28),

                MyButton(
                  text: 'LOGIN',
                  onPressed: () {
                    // Simple check: both fields must be filled
                    if (emailController.text.isEmpty ||
                        passwordController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Please fill all fields')),
                      );
                    } else {
                      // Go to the Home page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage()),
                      );
                    }
                  },
                ),
                const SizedBox(height: 20),

                // Go to the Register page
                TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterPage()),
                    );
                  },
                  child: const Text(
                    "Don't have an account? Register",
                    style: TextStyle(color: Colors.white),
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
