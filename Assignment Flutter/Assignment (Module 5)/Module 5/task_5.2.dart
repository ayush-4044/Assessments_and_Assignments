import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


class CartProvider extends ChangeNotifier {

  List<String> cartItems = [];

  void addItem(String item) {
    cartItems.add(item);
    notifyListeners();
  }
}

class ProductScreen extends StatelessWidget {

  final List<String> products = [
    "Apple",
    "Banana",
    "Orange",
    "Mango"
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
        actions: [

          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => CartScreen()),
              );
            },
          )

        ],
      ),

      body: ListView.builder(
        itemCount: products.length,
        itemBuilder: (context, index) {

          return ListTile(
            title: Text(products[index]),
            trailing: ElevatedButton(
              child: Text("Add"),
              onPressed: () {
                Provider.of<CartProvider>(context, listen: false)
                    .addItem(products[index]);
              },
            ),
          );
        },
      ),
    );
  }
}

class CartScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    final cart = Provider.of<CartProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),

      body: ListView.builder(
        itemCount: cart.cartItems.length,
        itemBuilder: (context, index) {

          return ListTile(
            title: Text(cart.cartItems[index]),
          );
        },
      ),
    );
  }
}