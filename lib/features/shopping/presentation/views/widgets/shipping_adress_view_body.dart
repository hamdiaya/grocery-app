import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce/core/utils/app_routes.dart';
import 'package:laza_ecommerce/core/widgets/general_app_bar.dart';
import 'package:laza_ecommerce/core/widgets/general_button.dart';
import 'package:laza_ecommerce/features/shopping/presentation/views/widgets/adress_form.dart';

class ShippingAdressViewBody extends StatefulWidget {
  const ShippingAdressViewBody({super.key});

  @override
  State<ShippingAdressViewBody> createState() => _ShippingAdressViewBodyState();
}

class _ShippingAdressViewBodyState extends State<ShippingAdressViewBody> {
  final TextEditingController nameController = TextEditingController();

  final TextEditingController countryController = TextEditingController();

  final TextEditingController cityController = TextEditingController();

  final TextEditingController phoneNumberController = TextEditingController();

  final TextEditingController adressController = TextEditingController();

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const GeneralAppBar(title: 'Address'),
          AdressForm(
            nameController: nameController,
            cityController: cityController,
            countryController: countryController,
            phoneNumberController: phoneNumberController,
            adressController: adressController,
            formkey: formKey,
          ),
          const Expanded(child: SizedBox()),
          GeneralButton(
              onTap: () {
                GoRouter.of(context).push(AppRoutes.paymentViewPath);
              },
              option: 'Next'),
        ],
      ),
    );
  }
}
