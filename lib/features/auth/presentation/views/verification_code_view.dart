import 'package:flutter/material.dart';
import 'package:laza_ecommerce/features/auth/presentation/views/widgets/verification_code_view_body.dart';

class VerificationCodeView extends StatelessWidget {
  const VerificationCodeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: VerificationCodeViewBody(),
    );
  }
}