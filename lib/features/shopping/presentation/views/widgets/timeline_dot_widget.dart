import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/design_size.dart';

class TimeLineDotWidget extends StatelessWidget {
  const TimeLineDotWidget({
    super.key,
    required this.dotContent,
  });
  final Widget dotContent;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: MediaQuery.of(context).size.width * 40 / DesignSize.width,
        height: MediaQuery.of(context).size.height * 40 / DesignSize.height,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(50),
        ),
        child: Center(child: dotContent));
  }
}
