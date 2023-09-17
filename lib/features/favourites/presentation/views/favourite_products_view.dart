import 'package:flutter/material.dart';
import 'package:laza_ecommerce/core/widgets/custom_navigation_bar.dart';
import 'package:laza_ecommerce/features/favourites/presentation/views/widgets/favourite_products_view_body.dart';

class FavouriteProductsView extends StatelessWidget {
  const FavouriteProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: CustomNavigationBar(),
      body: FavouriteProductsViewBody(),
    );
  }
}