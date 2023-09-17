import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/design_size.dart';
import '../../../../../core/utils/styles.dart';

class AddRatingWidget extends StatelessWidget {
  const AddRatingWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [  Text(
      'What do you think?',
      style: Styles.textStyle28,
    ),
     const  SizedBox(height: 10,),
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 59),
      child: Text(
        'please give your rating by clicking on the stars below',
        textAlign: TextAlign.center,
        style: Styles.textStyle15.copyWith(color: grey),
      ),
    ),
    const  SizedBox(height: 10,),
    RatingBar(
        itemSize: MediaQuery.of(context).size.width * 50 / DesignSize.width,
        maxRating: 5,
        allowHalfRating: true,
        glowColor: Colors.white,
        initialRating: 0,
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
        onRatingUpdate: (rating) {
         
        })],
    );
  }
}
