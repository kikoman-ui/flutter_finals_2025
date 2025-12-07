import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  // Sample product list
  final List<Map<String, String>> sampleProducts = [
    {"name": "Heat Press Printing", "image": "assets/apparel.webp"},
    {"name": "Heat Press Printing", "image": "assets/tela.webp"},
    {"name": "Heat Press Printing", "image": "assets/jacket.png"},
    {"name": "Heat Press Printing", "image": "assets/shirt.png"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Dashboard"),
        backgroundColor: Colors.blueAccent,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch, // stretch to full width
          children: [
            const SizedBox(height: 10),

            
            const Center(
              child: Text(
                "Explore our printing services",
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
            ),

            const SizedBox(height: 40),

            //Product Grid
            Expanded(
              child: GridView.builder(
                itemCount: sampleProducts.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // 2 items per row
                  crossAxisSpacing: 15,
                  mainAxisSpacing: 15,
                  childAspectRatio: 0.75, // height/width ratio
                ),
                itemBuilder: (context, index) {
                  final product = sampleProducts[index];
                  return _productCard(
                    name: product["name"]!,
                    imagePath: product["image"]!,
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }

  //PRODUCT CARD 
  Widget _productCard({
    required String name,
    required String imagePath,
    String price = "from 200 PHP",
  }) {
    return Card(
      elevation: 6,
      shadowColor: Colors.black26,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // PRODUCT IMAGE
            ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                imagePath,
                height: 120,
                width: double.infinity,
                fit: BoxFit.contain,
              ),
            ),
            const SizedBox(height: 12),

            // PRODUCT NAME
            Text(
              name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 4),

            // PRICE
            Text(
              price,
              style: const TextStyle(
                fontSize: 13,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
