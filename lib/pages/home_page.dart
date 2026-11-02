import 'package:flutter/material.dart';

import '../widgets/my_button.dart';

// Home Page (shown after login)
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(28),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset('assets/logo.png', height: 130),
                const SizedBox(height: 20),
                const Text(
                  'Welcome to DSaxroom!',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 40),
                MyButton(
                  text: 'LOGOUT',
                  onPressed: () {
                    // Go back to the Login page
                    Navigator.pop(context);
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
