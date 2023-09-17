import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/design_size.dart';
import '../../../../../core/utils/styles.dart';

class FavouriteProductCard extends StatelessWidget {
  const FavouriteProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: greyFill
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          children: [
            SvgPicture.asset('assets/undraw_beer_xg5f.svg',
            width: MediaQuery.of(context).size.width*60/DesignSize.width,
            height:MediaQuery.of(context).size.height*60/DesignSize.height ,),
           const SizedBox(width: 30,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Fresh Peach',style: Styles.textStyle17.copyWith(fontWeight: FontWeight.w600),),
                Text('\$22.88',style: Styles.textStyle15.copyWith(color: primaryColor),),
                Text('dozen',style: Styles.textStyle15.copyWith(color: grey),)
              ],
            ),
      
          ],
        ),
      ),
    );
  }
}