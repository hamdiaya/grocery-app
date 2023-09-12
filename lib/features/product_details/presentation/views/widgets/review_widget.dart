import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza_ecommerce/features/product_details/presentation/views/widgets/description_and_review_widget.dart';
import 'package:laza_ecommerce/features/product_details/presentation/views/widgets/rating.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/design_size.dart';
import '../../../../../core/utils/styles.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ClipOval(
              child: SizedBox.fromSize(
                  size: const Size.fromRadius(25), // Image radius
                  child: SvgPicture.asset(
                    'assets/avatar.svg',
                    width: MediaQuery.of(context).size.width *
                        40 /
                        DesignSize.width,
                    height: MediaQuery.of(context).size.height *
                        40 /
                        DesignSize.height,
                  )),
            ),
            const SizedBox(width: 10,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'reviewer name',
                  style: Styles.textStyle15
                      .copyWith(fontWeight: FontWeight.w600),
                ),
               const SizedBox(height: 7,),
                Row(
                  children: [
                    const Icon(
                      Icons.access_time,
                      size: 14,
                      color: grey,
                    ),
                    Text(
                      '13 Sep, 2020',
                      style: Styles.textStyle13.copyWith(color: grey),
                    )
                  ],
                ),
              ],
            ),
            const Expanded(child: SizedBox()),
           const Rating(
              rating: 4,
            ),
          ],
        ),
       const DescriptionAndReviewWidget(description: '"Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the worlds finest lemon for juicing')
      ],
    );
  }
}

