import 'package:flutter/material.dart';

class StarRating extends StatelessWidget {
  final int starCount;
  final double rating;
  final Function(
    double v,
  )? onRatingChanged;

  const StarRating(
      {super.key, this.starCount = 5, this.rating = .0, this.onRatingChanged});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        starCount,
        (index) => IconButton(
          onPressed: onRatingChanged == null
              ? null
              : () => onRatingChanged!(index + 1.0),
          icon: index >= rating
              ? const Icon(
                  Icons.star_border,
                  color: Colors.grey,
                )
              : (index > (rating - 1) && index < rating)
                  ? const Icon(
                      Icons.star_half,
                      color: Colors.amber,
                    )
                  : const Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
        ),
      ),
    );
  }
}
