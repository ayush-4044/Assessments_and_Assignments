import 'package:flutter/material.dart';

class GridImages extends StatelessWidget {
  GridImages({super.key});

  final List imageURL = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3wxJ0c-jC6VcDASO9aiDWD9zWAeJLKrS5gg&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl37Ha8cXj2c-sdAN1bfoPl31dXDgypc55Kw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQn2nmWoa-66Yo5xylQwIiAxtvMrK2pB2l4CA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-8Ne4j_5gRNNikzu_KZRIyzSihAQ74KAbiQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgNDuL6arLf9s9T3HEL9PQ7jUUCJKDzsScSA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUsbmTZu_uMrmJ0z--CrG-o1UIXytu1OCizQ&s",
    "https://t3.ftcdn.net/jpg/02/70/35/00/360_F_270350073_WO6yQAdptEnAhYKM5GuA9035wbRnVJSr.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmDpdESZq-3Wpj65-s4kbDNMSKFbW5eJUY2Q&s",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Images In Grid Formate"), centerTitle: true),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(28.0),
          child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              crossAxisSpacing: 4.0,
            ),
            itemCount: imageURL.length,
            itemBuilder: (BuildContext context, int index) {
              return Image.network(imageURL[index]);
            },
          ),
        ),
      ),
    );
  }
}
