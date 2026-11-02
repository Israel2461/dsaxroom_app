import 'package:flutter/material.dart';

import '../widgets/my_text_field.dart';
import '../widgets/my_button.dart';

// Register Page
class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(28),
            child: Column(
              children: [
                Image.asset('assets/logo.png', height: 110),
                const SizedBox(height: 20),
                const Text(
                  'Create Account',
                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                const Text(
                  'Sign up to get started',
                  style: TextStyle(color: Colors.white54),
                ),
                const SizedBox(height: 40),

                MyTextField(
                  label: 'Full Name',
                  icon: Icons.person_outline,
                  controller: nameController,
                ),
                const SizedBox(height: 16),
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
                const SizedBox(height: 16),
                MyTextField(
                  label: 'Confirm Password',
                  icon: Icons.lock_outline,
                  controller: confirmController,
                  hideText: true,
                ),
                const SizedBox(height: 28),

                MyButton(
                  text: 'REGISTER',
                  onPressed: () {
                    if (nameController.text.isEmpty ||
                        emailController.text.isEmpty ||
                        passwordController.text.isEmpty) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Please fill all fields')),
                      );
                    } else if (passwordController.text !=
                        confirmController.text) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Passwords do not match')),
                      );
                    } else {
                      // Go back to the Login page
                      Navigator.pop(context);
                    }
                  },
                ),
                const SizedBox(height: 20),

                // Go back to the Login page
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Already have an account? Login',
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
