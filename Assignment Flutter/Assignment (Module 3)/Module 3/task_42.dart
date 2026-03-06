import 'package:flutter/material.dart';

class MyProgressBar extends StatelessWidget {
  final double percentage;
  final double height;
  final Color color;

  const MyProgressBar({
    super.key,
    required this.percentage,
    this.height = 12.0,
    this.color = Colors.blueAccent,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          final double maxWidth = constraints.maxWidth;
          final double progressWidth = maxWidth * percentage.clamp(0.0, 1.0);
      
          return Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                height: height,
                width: maxWidth,
                decoration: BoxDecoration(
                  color: Colors.grey[300],
                  borderRadius: BorderRadius.circular(height / 2),
                ),
                child: Stack(
                  children: [
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOutCubic,
                      width: progressWidth,
                      height: height,
                      decoration: BoxDecoration(
                        color: color,
                        borderRadius: BorderRadius.circular(height / 2),
                        gradient: LinearGradient(
                          colors: [color.withOpacity(0.7), color],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}