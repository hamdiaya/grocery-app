import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce/core/utils/app_routes.dart';
import 'package:laza_ecommerce/core/utils/constants.dart';
import 'package:laza_ecommerce/core/utils/styles.dart';
import 'package:laza_ecommerce/core/utils/validators.dart';
import 'package:laza_ecommerce/features/auth/presentation/views/widgets/auth_button.dart';
import 'package:laza_ecommerce/features/auth/presentation/views/widgets/custom_text_field.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  final TextEditingController userNameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final GlobalKey<FormState> formkey = GlobalKey<FormState>();
  bool rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Expanded(child: SizedBox()),
        Text(
          'Welcome',
          style: Styles.textStyle28,
        ),
        Text(
          'Please enter your data to continue',
          style: Styles.textStyle15.copyWith(color: grey),
        ),
        const Expanded(child: SizedBox()),
        Form(
          key: formkey,
          child: Column(
            children: [
              CustomTextField(
                label: 'email',
                validator: emailValidator,
                controller: userNameController,
              ),
              CustomTextField(
                label: 'password',
                validator: passwordValidator,
                controller: passwordController,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: GestureDetector(
                onTap: () {
                  GoRouter.of(context).push(AppRoutes.forgotPasswordView);
                },
                child: Text(
                  'Forgot password?',
                  style: Styles.textStyle15.copyWith(color: Colors.red),
                ),
              ),
            )
          ],
        ),
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
              "Don't have an account yet?",
              style: Styles.textStyle13.copyWith(color: grey),
            ),
            GestureDetector(
              onTap: () {
                GoRouter.of(context).pushReplacement(AppRoutes.signUpViewPath);
              },
              child: Text(
                "Sign Up",
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
          text: 'Login',
          onTap: () {
            //login function
            if (formkey.currentState!.validate()) {
              GoRouter.of(context).pushReplacement(AppRoutes.homeViewPath);
            }
          },
        )
      ],
    );
  }
}
