import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce/core/utils/app_routes.dart';
import 'package:laza_ecommerce/core/utils/constants.dart';
import 'package:laza_ecommerce/core/utils/styles.dart';
import 'package:laza_ecommerce/features/introduction/presentation/views/widgets/choose_auth_button.dart';

class ChooseAuth extends StatelessWidget {
  const ChooseAuth({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(30), color: Colors.white),
      child: Column(
        children: [
          const SizedBox(
            height: 30,
          ),
          Text(
            'Welcome to BIG CART',
            style: Styles.textStyle25,
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Text(
              'Grocery shopping made easy. Start filling your cart now!',
              textAlign: TextAlign.center,
              style: Styles.textStyle15.copyWith(color: grey),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ChooseAuthButton(
                  buttonColor: const Color(0xffF5F6FA),
                  text: 'Login',
                  textColor: grey,
                  onTap: () {
                    GoRouter.of(context).pushReplacement(AppRoutes.loginViewPath);
                  },
                ),
                ChooseAuthButton(
                  buttonColor: primaryColor,
                  text: 'Sign Up',
                  textColor: Colors.white,
                  onTap: () {
                     GoRouter.of(context).pushReplacement(AppRoutes.signUpViewPath);
                  },
                )
              ],
            ),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}
