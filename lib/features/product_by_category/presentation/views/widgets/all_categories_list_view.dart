import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce/core/utils/app_routes.dart';
import 'package:laza_ecommerce/features/product_by_category/presentation/views/widgets/all_categories_card.dart';

class AllCategoriesListView extends StatelessWidget {
  const AllCategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        itemCount: 7,
        gridDelegate:
            const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
            child: GestureDetector(
                onTap: () {
                  GoRouter.of(context)
                      .push(AppRoutes.productsOfCategoryViewPath);
                },
                child: const AllCategoriesCard()),
          );
        },
      ),
    );
  }
}
