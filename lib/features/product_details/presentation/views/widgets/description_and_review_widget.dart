
import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';

class DescriptionAndReviewWidget extends StatelessWidget {
  const DescriptionAndReviewWidget({super.key, required this.description});

  final String description;

  @override
  Widget build(BuildContext context) {
    return ReadMoreText(
      description,
      trimLines: 3,
      trimMode: TrimMode.Line,
      trimCollapsedText: ' show more',
      trimExpandedText: ' show less',
      colorClickableText: Colors.black,
      style: Styles.textStyle15.copyWith(color: grey),
      textAlign: TextAlign.justify,
    );
  }
}
