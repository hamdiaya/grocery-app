import 'package:flutter/material.dart';
import 'package:laza_ecommerce/features/product_by_category/presentation/views/widgets/all_categories_list_view.dart';
import 'package:laza_ecommerce/core/widgets/general_app_bar.dart';

class AllTheCategoriesViewBody extends StatelessWidget {
  const AllTheCategoriesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding:  EdgeInsets.symmetric(horizontal:10,vertical: 10),
      child:  Column(
        children: [
         GeneralAppBar(title: 'Categories',),
         SizedBox(height: 20,),
         AllCategoriesListView(),
        ],
      ),
    );
  }
}

