import 'package:flutter/material.dart';
class PulsingButtonHome extends StatefulWidget {
  const PulsingButtonHome({super.key});

  @override
  State<PulsingButtonHome> createState() => _PulsingButtonHomeState();
}

class _PulsingButtonHomeState extends State<PulsingButtonHome> {
  double targetScale = 2.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title:  Text('Pulsing Button')),
      body: Center(
        child: TweenAnimationBuilder<double>(
          tween: Tween<double>(begin: 1.0, end: targetScale),
          duration:  Duration(milliseconds: 800),
          curve: Curves.easeInOut,
          onEnd: () {
            setState(() {
              targetScale = targetScale == 2.0 ? 1.5 : 2.0;
            });
          },
          builder: (context, scale, child) {
            return Transform.scale(
              scale: scale,
              child: child,
            );
          },
          child: ElevatedButton(
            onPressed: () => print("Button Pressed!"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.blueAccent,
              foregroundColor: Colors.white,
              padding:  EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              elevation: 8,
            ),
            child:  Text(
              'TAP ME',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}