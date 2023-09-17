import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce/core/utils/app_routes.dart';
import 'package:laza_ecommerce/core/utils/styles.dart';
import 'package:laza_ecommerce/core/widgets/general_button.dart';
import 'package:laza_ecommerce/features/shopping/presentation/views/widgets/shopping_products_list_view.dart';
import 'package:laza_ecommerce/features/shopping/presentation/views/widgets/shopping_total_widget.dart';

class ShoppingCartViewBody extends StatelessWidget {
  const ShoppingCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Text(
          'Shopping Cart',
          style: Styles.textStyle25,
        ),
        const SizedBox(
          height: 20,
        ),
        const ShoppingProductsListView(),
        const SizedBox(
          height: 20,
        ),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: ShoppingTotalWidget(
            totalPrice: '22.88',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: GeneralButton(
            onTap: () {
              GoRouter.of(context).push(AppRoutes.shippingAdressViewPath);
            },
            option: 'checkout',
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
