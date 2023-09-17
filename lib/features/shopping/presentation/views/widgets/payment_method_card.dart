import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/design_size.dart';
import '../../../../../core/utils/styles.dart';

class PaymentMethodCard extends StatelessWidget {
  const PaymentMethodCard({
    super.key, required this.imgUrl, required this.paymentMethod,
  });
  final String imgUrl;
  final String paymentMethod;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        width: MediaQuery.of(context).size.width * 110 / DesignSize.width,
        
        decoration: const BoxDecoration(
          color: greyFill,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 20),
            child: Column(
                   
              children: [
                SvgPicture.asset(imgUrl),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  paymentMethod,
                  style: Styles.textStyle15.copyWith(color: grey),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
