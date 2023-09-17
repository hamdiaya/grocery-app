import 'package:flutter/material.dart';
import 'package:laza_ecommerce/features/shopping/presentation/views/widgets/order_result_view_body.dart';

class OrderResultView extends StatelessWidget {
  const OrderResultView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: OrderResultViewBody(),
    );
  }
}