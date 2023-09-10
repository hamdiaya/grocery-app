import 'package:flutter/material.dart';

import '../../../../../core/utils/styles.dart';

class ChooseAuthButton extends StatelessWidget {
  const ChooseAuthButton({
    super.key,
    required this.buttonColor,
    required this.text,
    required this.textColor,
    required this.onTap,
  });
  final Color buttonColor;
  final String text;
  final Color textColor;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.4,
        height: MediaQuery.of(context).size.height * 0.08,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
            child: Text(
          text,
          style: Styles.textStyle17.copyWith(color: textColor),
        )),
      ),
    );
  }
}
