import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce/core/utils/validators.dart';
import 'package:laza_ecommerce/features/auth/presentation/views/widgets/auth_button.dart';

import 'package:laza_ecommerce/features/auth/presentation/views/widgets/custom_text_field.dart';

import '../../../../../core/utils/app_routes.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/styles.dart';

class SignUpViewBody extends StatefulWidget {
  const SignUpViewBody({super.key});

  @override
  State<SignUpViewBody> createState() => _SignUpViewBodyState();
}

class _SignUpViewBodyState extends State<SignUpViewBody> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(child: SizedBox()),
        Text(
          'Sign Up',
          style: Styles.textStyle28,
        ),
        const Expanded(child: SizedBox()),
        Form(
          key: formkey,
            child: Column(
          children: [
            CustomTextField(
              label: 'username',
              validator: userNameValidator,
              controller: userNameController,
            ),
            CustomTextField(
              label: 'password',
              validator: passwordValidator,
              controller: passwordController,
            ),
            CustomTextField(
              label: 'email',
              validator: emailValidator,
              controller: emailController,
            ),
          ],
        )),
        const SizedBox(
          height: 40,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Rememeber me',
                style: Styles.textStyle13,
              ),
              Switch(
                activeColor: Colors.green,
                value: rememberMe,
                onChanged: (value) {
                  setState(() {
                    rememberMe = value;
                  });
                },
              ),
            ],
          ),
        ),
        const Expanded(child: SizedBox()),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Already have an account?",
              style: Styles.textStyle13.copyWith(color: grey),
            ),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).pushReplacement(AppRoutes.loginViewPath);
              },
              child: Text(
                "Login",
                style: Styles.textStyle13.copyWith(
                  fontWeight: FontWeight.bold,
                  decoration: TextDecoration.underline,
                ),
              ),
            )
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        AuthButton(
          text: 'Sign Up',
          onTap: () {
           if(formkey.currentState!.validate()){
            //sign up function
             GoRouter.of(context).pushReplacement(AppRoutes.homeViewPath);
           }
          },
        )
      ],
    );
  }
}
