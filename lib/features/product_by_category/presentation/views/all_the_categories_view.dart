import 'package:flutter/material.dart';
import 'package:laza_ecommerce/features/product_by_category/presentation/views/widgets/all_the_categories_view_body.dart';

class AllTheCategoriesView extends StatelessWidget {
  const AllTheCategoriesView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AllTheCategoriesViewBody(),
    );
  }
}