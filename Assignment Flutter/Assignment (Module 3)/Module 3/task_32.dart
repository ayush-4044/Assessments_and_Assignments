import 'package:flutter/material.dart';


class CustomButtonScreen extends StatelessWidget {
  const CustomButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () => print("Button Tapped!"),
          child: Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none,
            children: [
              Container(
                width: 120,
                height: 60,
                margin: const EdgeInsets.only(top: 20), // Leave room for the icon overlap
                decoration: BoxDecoration(
                  color: Colors.blueAccent,
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 8)],
                ),
                alignment: Alignment.center,
                child: const Text(
                  "FAVORITE",
                  style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),

              const Positioned(
                top: 0, // Moves the icon to the very top edge of the stack
                child: CircleAvatar(
                  radius: 22,
                  backgroundColor: Colors.white,
                  child: Icon(Icons.favorite, color: Colors.red, size: 28),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}