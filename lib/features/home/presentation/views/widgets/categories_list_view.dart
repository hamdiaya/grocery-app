import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce/core/utils/app_routes.dart';
import 'package:laza_ecommerce/core/utils/design_size.dart';
import 'package:laza_ecommerce/features/home/presentation/views/widgets/category_card.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 100 / DesignSize.height,
      width: double.infinity,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                GoRouter.of(context).push(AppRoutes.productsOfCategoryViewPath);
              },
              child: const CategoryCard(
                  categoryName: 'vegetables', icon: Icons.apple),
            );
          }),
    );
  }
}
