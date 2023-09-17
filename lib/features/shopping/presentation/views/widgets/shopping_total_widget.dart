import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class ShoppingTotalWidget extends StatelessWidget {
  const ShoppingTotalWidget({
    super.key, required this.totalPrice,
  });
  final String totalPrice;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Total Price',
          style: Styles.textStyle17.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          '\$ $totalPrice',
          style: Styles.textStyle17.copyWith(
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
