import 'package:flutter/material.dart';

class Home_Screen extends StatelessWidget {
  const Home_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home"), centerTitle: true),
      body: Center(
        child: ElevatedButton(
          child: const Text("Go to Products"),
          onPressed: () => Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const ProductScreen()),
          ),
        ),
      ),
    );
  }
}

class ProductScreen extends StatelessWidget {
  const ProductScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Product List",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.orange,
      ),
      body: ListView(
        children: [
          ListTile(
            title: const Text("Laptop"),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailsScreen(item: "Laptop"),
              ),
            ),
          ),
          ListTile(
            title: const Text("Phone"),
            onTap: () => Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => const DetailsScreen(item: "Phone"),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class DetailsScreen extends StatelessWidget {
  final String item;
  const DetailsScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Details",style: TextStyle(color: Colors.white)),centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Product: $item", style: const TextStyle(fontSize: 24)),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Back"),
            ),
          ],
        ),
      ),
    );
  }
}
