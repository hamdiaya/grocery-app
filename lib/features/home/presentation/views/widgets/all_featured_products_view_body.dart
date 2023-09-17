import 'package:flutter/material.dart';
import 'package:laza_ecommerce/core/widgets/general_app_bar.dart';
import 'package:laza_ecommerce/features/home/presentation/views/widgets/featured_products_list_view.dart';

class AllFeaturedProductsViewBody extends StatelessWidget {
  const AllFeaturedProductsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child:  Column(
        children: [
          GeneralAppBar(title: 'Featured Products'),
          FeaturedProductsListView(),
        ],
      ),
    );
  }
}