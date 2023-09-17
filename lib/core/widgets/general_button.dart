import 'package:flutter/material.dart';
import '../utils/constants.dart';
import '../utils/design_size.dart';
import '../utils/styles.dart';

class GeneralButton extends StatelessWidget {
  const GeneralButton({super.key, required this.onTap, required this.option});
  final Function() onTap;
  final String option;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * 60 / DesignSize.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(
          color: primaryColor,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [ BoxShadow(
        color: Colors.grey, 
        offset: Offset(0, 2), 
        blurRadius: 4, 
        spreadRadius: 1,
      ),],
        ),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Center(
            child: Text(
              option,
              style: Styles.textStyle15.copyWith(color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
