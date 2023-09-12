import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/design_size.dart';
import '../../../../../core/utils/styles.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key, required this.rating,
  });
  final double rating;

  @override
  Widget build(BuildContext context) {
    return Column(
     
      children: [
        Row(
          children: [
            Text(
              '$rating',
              style: Styles.textStyle15.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'rating',
              style: Styles.textStyle11.copyWith(color: grey),
            )
          ],
        ),
        RatingBar(
            itemSize: MediaQuery.of(context).size.width * 15 / DesignSize.width,
            maxRating: 5,
            ignoreGestures: true,
            allowHalfRating: true,
            glowColor: Colors.white,
            initialRating: rating,
            ratingWidget: RatingWidget(
                full: const Icon(
                  Icons.star,
                  color: Colors.amber,
                ),
                half: const Icon(
                  Icons.star_half_outlined,
                  color: Colors.amber,
                ),
                empty: const Icon(
                  Icons.star_border,
                  color: Colors.amber,
                )),
            onRatingUpdate: (rating) {})
      ],
    );
  }
}
