import 'package:flutter/material.dart';

class OverlayScreen extends StatelessWidget {
  const OverlayScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Stack Overlay")),
      body: Center(
        child: Container(
          width: 300,
          height: 300,
          child: Stack(
            children: [
              Image.network(
                'https://picsum.photos/300',
                width: 300,
                height: 300,
                fit: BoxFit.cover,
              ),
              Positioned.fill(
                child: Container(
                  color: Colors.black.withOpacity(0.5), // Partially transparent
                  alignment: Alignment.center,
                  child: const Text(
                    "ADVENTURE",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 2,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}