import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce/core/utils/app_routes.dart';
import 'package:laza_ecommerce/core/utils/constants.dart';
import 'package:laza_ecommerce/core/utils/styles.dart';
import 'package:laza_ecommerce/core/utils/validators.dart';
import 'package:laza_ecommerce/features/auth/presentation/views/widgets/auth_button.dart';
import 'package:laza_ecommerce/features/auth/presentation/views/widgets/custom_text_field.dart';

class ForgotPasswordViewBody extends StatefulWidget {
  const ForgotPasswordViewBody({super.key});

  @override
  State<ForgotPasswordViewBody> createState() => _ForgotPasswordViewBodyState();
}

class _ForgotPasswordViewBodyState extends State<ForgotPasswordViewBody> {
  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final GlobalKey<FormState> formkey = GlobalKey<FormState>();
    return Column(
      children: [
        const Expanded(child: SizedBox()),
        Text(
          'Forgot Password',
          style: Styles.textStyle28,
        ),
        SvgPicture.asset('assets/password.svg'),
        const Expanded(child: SizedBox()),
        Form(
          key: formkey,
          child: CustomTextField(
            label: 'email',
            controller: emailController,
            validator: emailValidator,
          ),
        ),
        const Expanded(child: SizedBox()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 56),
          child: Text(
            'Please write your email to receive a confirmation code to set a new password.',
            style: Styles.textStyle13.copyWith(color: grey),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        AuthButton(
            text: 'Send confirmation code',
            onTap: () {
              
              if(formkey.currentState!.validate()){
                
          GoRouter.of(context).push(AppRoutes.verificationCodeView);
              }
             
            }),
      ],
    );
  }
}
