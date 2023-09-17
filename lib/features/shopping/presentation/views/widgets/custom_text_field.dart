import 'package:flutter/material.dart';
import 'package:laza_ecommerce/core/utils/constants.dart';
import 'package:laza_ecommerce/core/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, this.width, required this.hint, required this.controller, required this.validator});
  final double? width;
  final String hint;
  final TextEditingController controller;
  final String? Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      child: TextFormField(
        style:  Styles.textStyle15.copyWith(color: grey),
        validator: validator,
        controller: controller,
        cursorColor: grey,
        decoration: InputDecoration(
          hintText: hint,
          hintStyle: Styles.textStyle15.copyWith(color: grey),
          fillColor: greyFill,
          filled: true,
          enabledBorder: buildBorder(),
          focusedBorder: buildBorder(),
          errorBorder: buildBorder().copyWith(
            borderSide: const BorderSide(
              color: Colors.red,
            )
          )
        ),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
        borderRadius: BorderRadius.circular(10),
        borderSide: const BorderSide(
          color: greyFill,
          width: 0,
        ));
  }
}
