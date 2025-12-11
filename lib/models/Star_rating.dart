import 'package:flutter/material.dart';

class StarRating extends StatefulWidget {
  final double rating;
  final Function(double) onRatingChanged;
  final double size;

  const StarRating({
    super.key,
    required this.rating,
    required this.onRatingChanged,
    this.size = 24,
  });

  @override
  State<StarRating> createState() => _StarRatingState();
}

class _StarRatingState extends State<StarRating> {
  late double currentRating;

  @override
  void initState() {
    super.initState();
    currentRating = widget.rating;
  }

  void updateRating(double value) {
    setState(() => currentRating = value);
    widget.onRatingChanged(value);
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(5, (index) {
        double starValue = index+1;

        return GestureDetector(
          onTap: () => updateRating(starValue), // ← هنا الحل
          child: Icon(
            currentRating >= starValue
                ? Icons.star
                : Icons.star_border,
            color: Colors.amber,
            size: widget.size,
          ),
        );
      }),
    );
  }
}
