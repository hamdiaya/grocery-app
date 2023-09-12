import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';

class ProductGeneralInfo extends StatelessWidget {
  const ProductGeneralInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          'Fresh Peach',
          style: Styles.textStyle25,
        ),
        Text(
          '22.88\$/doze',
          style: Styles.textStyle17.copyWith(color: primaryColor),
        ),
      ],
    );
  }
}
