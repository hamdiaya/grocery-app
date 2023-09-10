import 'package:flutter/material.dart';


import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key, required this.label, this.validator, required this.controller});
  final String label;
  final String? Function(String?)? validator;
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: TextFormField(
        validator: validator,
        controller: controller,
        decoration: InputDecoration(
          label: Text(
            label,
            style: Styles.textStyle13.copyWith(color: grey),
          ),
        ),
      ),
    );
  }
}
