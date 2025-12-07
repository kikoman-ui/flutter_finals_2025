import 'package:flutter/material.dart';
import 'package:login_midterm/pages/login.dart';

void main() => runApp(const Navigation());

class Navigation extends StatelessWidget {
  const Navigation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Pre-Finals App',
      debugShowCheckedModeBanner: false,
      home: const Login(),
    );
  }
}
