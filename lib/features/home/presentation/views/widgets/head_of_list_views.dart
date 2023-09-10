import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';

class HeadOfListViews extends StatelessWidget {
  const HeadOfListViews({
    super.key,
    required this.listViewTitle,
    required this.onPressed,
  });
  final String listViewTitle;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          listViewTitle,
          style: Styles.textStyle17,
        ),
        TextButton(
          onPressed: onPressed,
          child: Text(
            'View All',
            style: Styles.textStyle13.copyWith(color: grey),
          ),
        )
      ],
    );
  }
}
