import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';

class AuthButton extends StatelessWidget {
  const AuthButton({
    super.key,
    required this.text, required this.onTap,
  });
  final String text;
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: MediaQuery.of(context).size.height * 0.09,
        color: primaryColor,
        child: Center(
            child: Text(
          text,
          style: Styles.textStyle17.copyWith(color: Colors.white),
        )),
      ),
    );
  }
}
