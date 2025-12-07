import 'package:flutter/material.dart';

class FeatureScreen extends StatelessWidget {
  const FeatureScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Features")),
      body: ListView(
        padding: const EdgeInsets.all(20),
        children: [
          Card(
            elevation: 4,
            child: ListTile(
              leading: Icon(Icons.notifications),
              title: Text("Activity Notifications"),
              subtitle: Text("View recent updates"),
            ),
          ),
          SizedBox(height: 10),
          Card(
            elevation: 4,
            child: ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text("Cart"),
              subtitle: Text("Check your items"),
            ),
          ),
          SizedBox(height: 10),
          Card(
            elevation: 4,
            child: ListTile(
              leading: Icon(Icons.list_alt),
              title: Text("Task List"),
              subtitle: Text("Your daily tasks"),
            ),
          ),
        ],
      ),
    );
  }
}
