import 'package:flutter/material.dart';

class ChangeImageScreen extends StatefulWidget {
  const ChangeImageScreen({super.key});

  @override
  State<ChangeImageScreen> createState() => _ChangeImageScreenState();
}

class _ChangeImageScreenState extends State<ChangeImageScreen> {
  List imageURL = [
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ3wxJ0c-jC6VcDASO9aiDWD9zWAeJLKrS5gg&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTl37Ha8cXj2c-sdAN1bfoPl31dXDgypc55Kw&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQn2nmWoa-66Yo5xylQwIiAxtvMrK2pB2l4CA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS-8Ne4j_5gRNNikzu_KZRIyzSihAQ74KAbiQ&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSgNDuL6arLf9s9T3HEL9PQ7jUUCJKDzsScSA&s",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTUsbmTZu_uMrmJ0z--CrG-o1UIXytu1OCizQ&s",
    "https://t3.ftcdn.net/jpg/02/70/35/00/360_F_270350073_WO6yQAdptEnAhYKM5GuA9035wbRnVJSr.jpg",
    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTmDpdESZq-3Wpj65-s4kbDNMSKFbW5eJUY2Q&s",
  ];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Change Image"),
      centerTitle: true,),
      body: Center(
        child: Column(
          children: [
            SizedBox(height: 100,),
            Container(
              height: 300,
              width: 300,
              child: Image.network(imageURL[currentIndex]),
            ),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  currentIndex++;
                  if (currentIndex >= imageURL.length) {
                    currentIndex = 0;
                  }
                });
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.white,
                backgroundColor: Colors.teal,
              ),
              child: Text("Change"),
            ),
          ],
        ),
      ),
    );
  }
}
