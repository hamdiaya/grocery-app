import 'package:flutter/material.dart';
import 'package:laza_ecommerce/core/widgets/custom_navigation_bar.dart';
import 'package:laza_ecommerce/features/shopping/presentation/views/widgets/shopping_cart_view_body.dart';

class ShoppingCartView extends StatelessWidget {
  const ShoppingCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomNavigationBar(),
     body: ShoppingCartViewBody(),
    );
  }
}