import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce/core/utils/app_routes.dart';
import 'package:laza_ecommerce/core/utils/validators.dart';
import 'package:laza_ecommerce/features/auth/presentation/views/widgets/custom_text_field.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';
import 'auth_button.dart';

class NewPasswordViewBody extends StatelessWidget {
  NewPasswordViewBody({super.key});
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(child: SizedBox()),
        Text(
          'New password',
          style: Styles.textStyle28,
        ),
        const Expanded(child: SizedBox()),
        Form(
          key: formkey,
          child: Column(
            children: [
              CustomTextField(
                label: 'password',
                validator: passwordValidator,
                controller: passwordController,
              ),
              CustomTextField(
                label: 'confirm password',
                validator: passwordValidator,
                controller: confirmPasswordController,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        const SizedBox(
          height: 40,
        ),
        const Expanded(child: SizedBox()),
        Text(
          'Please write your new password.',
          style: Styles.textStyle13.copyWith(color: grey),
        ),
        const SizedBox(
          height: 25,
        ),
        AuthButton(
          text: 'Reset Password',
          onTap: () {
            if(formkey.currentState!.validate()){
 //reset password
            
            GoRouter.of(context).push(AppRoutes.passwordResetSuccessPath);
            }
           
          },
        )
      ],
    );
  }
}
