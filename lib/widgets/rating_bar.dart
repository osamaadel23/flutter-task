import 'package:flutter/material.dart';

typedef RatingChangeCallback = void Function(double rating);

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final RatingChangeCallback onRatingChanged;
  final Color color;

  const StarRating(
      {Key? key,
      this.starCount = 5,
      this.rating = .0,
      required this.onRatingChanged,
      required this.color})
      : super(key: key);

  Widget buildStar(BuildContext context, int index) {
    Icon icon;
    if (index >= rating) {
      icon = const Icon(
        Icons.star_border,
        size: 18,
        color: Colors.black26,
      );
    } else if (index > rating - 1 && index < rating) {
      icon = Icon(
        Icons.star_half,
        color: color,
        size: 18,
      );
    } else {
      icon = Icon(
        Icons.star,
        color: color,
        size: 18,
      );
    }
    return InkResponse(
      onTap: () => onRatingChanged(index + 1.0),
      child: icon,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisSize: MainAxisSize.min,
        children:
            List.generate(starCount, (index) => buildStar(context, index)));
  }
}
