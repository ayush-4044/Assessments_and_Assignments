import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';

class FadeInAnimation extends StatelessWidget {
  const FadeInAnimation({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Fade-In Image Example')),
        body: Center(
          child: Stack(
            children: <Widget>[
              // Optional: A loading spinner behind the image
              const Center(child: CircularProgressIndicator()),
              Center(
                child: FadeInImage.memoryNetwork(
                  placeholder: kTransparentImage,
                  image: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRP8yGuDDBINqOdIbbrUVrBZvNwCTQMp_0ZCg&s',
                  fadeInCurve: Curves.easeIn,
                ),
              ),
            ],
          ),
        ),
      );

  }
}