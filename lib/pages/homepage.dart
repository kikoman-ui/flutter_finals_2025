import 'package:flutter/material.dart';
import 'package:login_midterm/pages/features.dart';
import 'package:login_midterm/pages/account.dart';
import 'package:login_midterm/pages/home.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int pageIndex = 0;

  final pages = [
    HomeScreen(), // <-- remove const here
    const FeatureScreen(),
    const AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[pageIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: pageIndex,
        onTap: (value) => setState(() => pageIndex = value),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.blueAccent), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart, color: Colors.blueAccent), label: "Features"),
          BottomNavigationBarItem(icon: Icon(Icons.person_pin, color: Colors.blueAccent), label: "Account"),
        ],
      ),
    );
  }
}
