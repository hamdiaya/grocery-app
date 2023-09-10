import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';

import '../../../../../core/utils/styles.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    super.key,
    required this.controller,
    required this.validator,
  });
  final TextEditingController controller;
  final String? Function(String?) validator;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Styles.textStyle15,
      cursorColor: grey,
      controller: controller,
      validator: validator,
      decoration: InputDecoration(
        filled: true,
        fillColor: greyFill,
        prefixIcon: const Icon(
          Icons.search,
          color: grey,
        ),
        hintText: 'Search...',
        hintStyle: Styles.textStyle15.copyWith(color: grey),
        border: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }
}

OutlineInputBorder buildBorder() {
  return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: grey));
}
