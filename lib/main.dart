import 'package:flutter/material.dart';

import 'pages/login_page.dart';

// The app starts here
void main() {
  runApp(const MyApp());
}

// The root of the app: sets the black and white theme
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.dark,
        scaffoldBackgroundColor: Colors.black,
      ),
      home: LoginPage(), // the first page the user sees
    );
  }
}
