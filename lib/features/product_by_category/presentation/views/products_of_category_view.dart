import 'package:flutter/material.dart';
import 'package:laza_ecommerce/features/product_by_category/presentation/views/widgets/products_of_category_view_body.dart';

class ProductsOfCategoryView extends StatelessWidget {
  const ProductsOfCategoryView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ProductsOfCategoryViewBody(),
    );
  }
}