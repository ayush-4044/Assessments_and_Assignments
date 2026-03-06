import 'package:flutter/material.dart';

class AvatarBadge extends StatelessWidget {
  final String imageUrl;
  final bool isOnline;
  final double radius;

  const AvatarBadge({
    super.key,
    required this.imageUrl,
    this.isOnline = false,
    this.radius = 30.0,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            CircleAvatar(
              radius: radius,
              backgroundImage: NetworkImage(imageUrl),
              backgroundColor: Colors.grey[200],
            ),

            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                height: radius * 0.6,
                width: radius * 0.6,
                decoration: BoxDecoration(
                  color: isOnline ? Colors.green : Colors.grey,
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 2),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}