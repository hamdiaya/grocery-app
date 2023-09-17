import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce/core/utils/app_routes.dart';
import 'package:laza_ecommerce/core/widgets/general_app_bar.dart';
import 'package:laza_ecommerce/core/widgets/general_button.dart';
import 'package:laza_ecommerce/features/shopping/presentation/views/widgets/payment_form.dart';
import 'package:laza_ecommerce/features/shopping/presentation/views/widgets/payment_methods_list.dart';

class PaymentViewBody extends StatelessWidget {
  PaymentViewBody({super.key});
  final TextEditingController nameController = TextEditingController();

  final TextEditingController cardNumberController = TextEditingController();

  final TextEditingController dateController = TextEditingController();

  final TextEditingController cvvController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        children: [
          const GeneralAppBar(title: 'Payment'),
          const PaymentMethodsList(),
          PaymentForm(
            nameController: nameController,
            cardNumberController: cardNumberController,
            dateController: dateController,
            cvvController: cvvController,
            formkey: formKey,
          ),
          const Expanded(child: SizedBox()),
          GeneralButton(
              onTap: () {
                GoRouter.of(context).push(AppRoutes.orderResultViewPath);
              },
              option: 'Make Payment '),
        ],
      ),
    );
  }
}
