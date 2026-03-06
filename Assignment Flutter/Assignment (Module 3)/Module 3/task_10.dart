import 'package:flutter/material.dart';

class ShoppingCartScreen extends StatefulWidget {
  const ShoppingCartScreen({super.key});

  @override
  State<ShoppingCartScreen> createState() => _ShoppingCartScreenState();
}

var total = 0;

class _ShoppingCartScreenState extends State<ShoppingCartScreen> {
  List items = [
    "Pizza",
    "Burger",
    "Milk",
    "Coffee",
    "Tea",
    "Sugar",
    "Chocolate",
    "Biscuit",
    "Shop",
    "Shampoo",

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Items in Cart : $total"),
        centerTitle: true,
        backgroundColor: Colors.amber,
        foregroundColor: Colors.black,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 8.0),
                child: ListTile(
                  title: Text(
                    items[index],
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  tileColor: Color(0xFFB2B2B2),
                  textColor: Colors.black87,
                  trailing: IconButton(
                    onPressed: () {
                      ///
                      setState(() {
                        total++;
                      });
                    },
                    icon: Icon(Icons.shopping_cart),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
