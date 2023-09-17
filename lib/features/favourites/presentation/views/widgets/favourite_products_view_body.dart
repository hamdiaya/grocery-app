import 'package:flutter/material.dart';
import 'package:laza_ecommerce/core/utils/styles.dart';
import 'package:laza_ecommerce/features/favourites/presentation/views/widgets/favourite_products_list_view.dart';

class FavouriteProductsViewBody extends StatelessWidget {
  const FavouriteProductsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      children: [
        const SizedBox(height: 20,),
        Text('Favourite',style: Styles.textStyle25,),
        const SizedBox(height: 20,),
      const FavouriteProductsListView(),
      ],
    );
  }
}

