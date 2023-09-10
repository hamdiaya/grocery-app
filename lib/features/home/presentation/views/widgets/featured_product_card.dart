import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza_ecommerce/core/utils/constants.dart';
import 'package:laza_ecommerce/core/utils/styles.dart';
import '../../../../../core/utils/design_size.dart';

class FeaturedProductCard extends StatelessWidget {
  const FeaturedProductCard({super.key, required this.imgUrl, required this.price, required this.productName, required this.doze, required this.onTap});
  final String imgUrl;
  final String price;
  final String productName;
  final String doze;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 160 / DesignSize.width,
        height: MediaQuery.of(context).size.height * 210 / DesignSize.height,
        decoration: BoxDecoration(
          color: greyFill,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite_outline,
                      color: grey,
                    )),
              ],
            ),
            SvgPicture.asset(
              imgUrl,
              width: MediaQuery.of(context).size.width * 80 / DesignSize.width,
              height: MediaQuery.of(context).size.height * 80 / DesignSize.height,
            ),
            const Expanded(child: SizedBox()),
            Text(
              price,
              style: Styles.textStyle15.copyWith(color: primaryColor),
            ),
            const Expanded(child: SizedBox()),
            Text(
              productName,
              style: Styles.textStyle17.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
             doze,
              style: Styles.textStyle15.copyWith(color: grey),
            ),
            const Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
