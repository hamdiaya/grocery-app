import 'package:flutter/material.dart';
import 'package:laza_ecommerce/features/home/presentation/views/widgets/all_featured_products_view_body.dart';

class AllFeaturedProductsView extends StatelessWidget {
  const AllFeaturedProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AllFeaturedProductsViewBody(),
    );
  }
}