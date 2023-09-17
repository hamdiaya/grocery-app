import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce/core/utils/app_routes.dart';
import 'package:laza_ecommerce/core/widgets/general_app_bar.dart';
import 'package:laza_ecommerce/core/widgets/general_button.dart';
import 'package:laza_ecommerce/features/product_details/presentation/views/widgets/reviews_list_view.dart';

class AllTheReviewsViewBody extends StatelessWidget {
  const AllTheReviewsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        children: [
          const GeneralAppBar(title: 'Reviews'),
          const ReviewsListView(),
          GeneralButton(
            option: 'add review',
            onTap: () {
            GoRouter.of(context).push(AppRoutes.addReviewViewPath);
          }),
        ],
      ),
    );
  }
}
