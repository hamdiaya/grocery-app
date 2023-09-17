import 'package:flutter/material.dart';
import 'package:laza_ecommerce/features/shopping/presentation/views/widgets/shipping_adress_view_body.dart';

class ShippingAdressView extends StatelessWidget {
  const ShippingAdressView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body: ShippingAdressViewBody(),
    );
  }
}