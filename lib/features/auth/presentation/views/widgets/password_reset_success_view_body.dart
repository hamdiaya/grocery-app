import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce/core/utils/app_routes.dart';
import 'package:laza_ecommerce/core/utils/constants.dart';
import 'package:laza_ecommerce/core/utils/styles.dart';
import 'package:laza_ecommerce/features/auth/presentation/views/widgets/auth_button.dart';

class PasswordResetSuccessViewBody extends StatelessWidget {
  const PasswordResetSuccessViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
          const Expanded(child: SizedBox()),
        Icon(
          Icons.check_circle_sharp,
          size: MediaQuery.of(context).size.width * 0.5,
          color: primaryColor,
        ),
         const SizedBox(height: 10,),
        Text(
          'Password Changed !',
          style: Styles.textStyle28,
        ),
         const SizedBox(height: 10,),
        Text(
          'your password has been changed successfully',
          style: Styles.textStyle13.copyWith(color: grey),
        ),
       const Expanded(child: SizedBox()),
        AuthButton(
            text: 'Login',
            onTap: () {
              GoRouter.of(context).pushReplacement(AppRoutes.loginViewPath);
            }),
      ],
    );
  }
}
