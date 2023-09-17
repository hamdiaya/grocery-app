import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza_ecommerce/core/utils/assets_data.dart';
import 'package:laza_ecommerce/core/utils/constants.dart';
import 'package:laza_ecommerce/core/utils/styles.dart';
import 'package:laza_ecommerce/core/widgets/general_app_bar.dart';
import 'package:laza_ecommerce/core/widgets/general_button.dart';

class OrderResultViewBody extends StatelessWidget {
  const OrderResultViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        const GeneralAppBar(title: 'Order Success'),
        const Expanded(child: SizedBox()),
        SvgPicture.asset(AssetsData.logo),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 100),
          child: Text(
            'Your order was succesfull !',
            style: Styles.textStyle25,
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          'You will get a response within a few minutes.',
          style: Styles.textStyle15.copyWith(color: grey),
        ),
        const Expanded(child: SizedBox()),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GeneralButton(onTap: () {}, option: 'Track your Order'),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
