import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';

class AddReviewTextField extends StatelessWidget {
  const AddReviewTextField({
    super.key, required this.controller,
  });
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      cursorColor: grey,
      maxLines: 6,
      decoration: InputDecoration(
        hintText: 'Tell us about your experience',
        hintStyle: Styles.textStyle15.copyWith(color: grey),
        contentPadding: const EdgeInsets.all(20),
        border: buildBorder(),
        focusedBorder: buildBorder(),
      ),
    );
  }

  OutlineInputBorder buildBorder() {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
      borderSide: const BorderSide(color: grey),
    );
  }
}
