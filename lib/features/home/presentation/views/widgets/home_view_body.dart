import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:laza_ecommerce/core/utils/constants.dart';
import 'package:laza_ecommerce/core/utils/styles.dart';
import 'package:laza_ecommerce/core/utils/validators.dart';
import 'package:laza_ecommerce/features/home/presentation/views/widgets/categories_list_view.dart';
import 'package:laza_ecommerce/features/home/presentation/views/widgets/featured_products_list_view.dart';
import 'package:laza_ecommerce/features/home/presentation/views/widgets/head_of_list_views.dart';
import 'package:laza_ecommerce/features/home/presentation/views/widgets/search_text_field.dart';

class HomeViewBody extends StatelessWidget {
  HomeViewBody({super.key});
  final TextEditingController controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
         const SizedBox(height: 20,),
          Text(
            'Hello Name',
            style: Styles.textStyle28,
          ),
          Text(
            'welcome to BIG CART',
            style: Styles.textStyle15.copyWith(color: grey),
          ),
           const SizedBox(height: 20,),
          SearchTextField(controller: controller, validator: userNameValidator),
          HeadOfListViews(
            listViewTitle: 'Categories',
            onPressed: () {},
          ),
          const CategoriesListView(),
          HeadOfListViews(
            listViewTitle: 'Featured Products',
            onPressed: () {},
          ),
          const FeaturedProductsListView(),
        ],
      ),
    );
  }
}

