import 'package:flutter/material.dart';

class RatingScreen extends StatefulWidget {
  final int initialRating;
  final ValueChanged<int> onRatingSelected;

  const RatingScreen({
    super.key,
    this.initialRating = 0,
    required this.onRatingSelected,
  });

  @override
  State<RatingScreen> createState() => _RatingScreenState();
}

class _RatingScreenState extends State<RatingScreen> {

  late int _currentRating;

  @override
  void initState() {
    super.initState();
    _currentRating = widget.initialRating;
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: List.generate(5, (index) {
            int starRating = index + 1;
      
            return IconButton(
              icon: Icon(
                starRating <= _currentRating ? Icons.star : Icons.star_border,
                color: starRating <= _currentRating ? Colors.amber : Colors.grey,
                size: 40,
              ),
              onPressed: () {
                setState(() {
                  _currentRating = starRating;
                });
                widget.onRatingSelected(_currentRating);
              },
            );
          }),
        ),
      ),
    );
  }
}