import 'package:flutter/material.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/design_size.dart';

class CodeConfirmationTextField extends StatelessWidget {
  const CodeConfirmationTextField({
    super.key, required this.controller,
  });
  final TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: PinCodeTextField(
        controller: controller,
        appContext: context,
        length: 4,
        keyboardType: TextInputType.number,
        pinTheme: PinTheme(
          fieldWidth: MediaQuery.of(context).size.width * 77 / DesignSize.width,
          fieldHeight:
              MediaQuery.of(context).size.height * 98 / DesignSize.height,
          shape: PinCodeFieldShape.box,
          borderRadius: BorderRadius.circular(10),
          activeColor: primaryColor,
          inactiveColor: grey,
          selectedColor: primaryColor,
        ),
      ),
    );
  }
}
