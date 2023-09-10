import 'package:flutter/material.dart';
import 'package:laza_ecommerce/features/auth/presentation/views/widgets/password_reset_success_view_body.dart';

class PasswordResetSuccess extends StatelessWidget {
  const PasswordResetSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: PasswordResetSuccessViewBody(),
    );
  }
}