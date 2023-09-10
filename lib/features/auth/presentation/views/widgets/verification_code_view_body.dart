import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce/core/utils/app_routes.dart';
import 'package:laza_ecommerce/features/auth/presentation/views/widgets/auth_button.dart';
import 'package:laza_ecommerce/features/auth/presentation/views/widgets/code_confirmation_text_field.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';

class VerificationCodeViewBody extends StatelessWidget {
  VerificationCodeViewBody({super.key});
  final TextEditingController codeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(child: SizedBox()),
        Text(
          'Verification code',
          style: Styles.textStyle28,
        ),
        SvgPicture.asset('assets/password.svg'),
        const Expanded(child: SizedBox()),
        CodeConfirmationTextField(
          controller: codeController,
        ),
        const Expanded(child: SizedBox()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 56),
          child: Row(
            children: [
              Text(
                "didn't receive verification code?",
                style: Styles.textStyle13.copyWith(color: grey),
                textAlign: TextAlign.center,
              ),
              GestureDetector(
                onTap: () {
                  //resend confirmation code
                },
                child: Text(
                  "resend",
                  style: Styles.textStyle13.copyWith(
                    color: Colors.black,
                    decoration: TextDecoration.underline,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        AuthButton(
            text: 'Confirm code',
            onTap: () {
              GoRouter.of(context).pushReplacement(AppRoutes.newPasswordViewPath);
              //send confirmation code to reset password
            }),
      ],
    );
  }
}
