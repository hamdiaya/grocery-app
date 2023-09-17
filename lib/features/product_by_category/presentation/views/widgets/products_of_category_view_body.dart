import 'package:flutter/material.dart';
import 'package:laza_ecommerce/core/widgets/general_app_bar.dart';

import 'package:laza_ecommerce/features/product_by_category/presentation/views/widgets/products_of_category_list_view.dart';



class ProductsOfCategoryViewBody extends StatelessWidget {
  const ProductsOfCategoryViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Padding(
      padding:  EdgeInsets.symmetric(horizontal: 10,vertical: 10),
      child:  Column(
        children: [
        GeneralAppBar(title: 'Vegatbles'),
         ProductsOfCategoryListView(),
        ],
      ),
    );
  }
}