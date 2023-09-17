import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce/core/utils/app_routes.dart';
import 'package:laza_ecommerce/core/utils/constants.dart';
import 'package:laza_ecommerce/core/utils/styles.dart';
import 'package:laza_ecommerce/core/utils/validators.dart';
import 'package:laza_ecommerce/features/home/presentation/views/widgets/categories_list_view.dart';
import 'package:laza_ecommerce/features/home/presentation/views/widgets/featured_products_list_view.dart';
import 'package:laza_ecommerce/core/widgets/head_of_list_views.dart';
import 'package:laza_ecommerce/features/home/presentation/views/widgets/search_text_field.dart';

class HomeViewBody extends StatefulWidget {
  const HomeViewBody({super.key});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  final TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          Text(
            'Hello Name',
            style: Styles.textStyle28,
          ),
          Text(
            'welcome to BIG CART',
            style: Styles.textStyle15.copyWith(color: grey),
          ),
          const SizedBox(
            height: 20,
          ),
          SearchTextField(controller: controller, validator: userNameValidator),
          HeadOfListViews(
            listViewTitle: 'Categories',
            onPressed: () {
              GoRouter.of(context).push(AppRoutes.allTheCategoriesViewPath);
            },
          ),
          const CategoriesListView(),
          HeadOfListViews(
            listViewTitle: 'Featured Products',
            onPressed: () {
              GoRouter.of(context).push(AppRoutes.allFeaturedProductsViewPath);
            },
          ),
          const FeaturedProductsListView(),
        ],
      ),
    );
  }
}
