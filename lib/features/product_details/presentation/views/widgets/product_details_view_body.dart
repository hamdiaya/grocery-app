import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce/core/utils/app_routes.dart';
import 'package:laza_ecommerce/core/utils/styles.dart';
import 'package:laza_ecommerce/features/product_details/presentation/views/widgets/add_to_cart_button.dart';
import 'package:laza_ecommerce/features/product_details/presentation/views/widgets/description_and_review_widget.dart';
import 'package:laza_ecommerce/core/widgets/head_of_list_views.dart';
import 'package:laza_ecommerce/features/product_details/presentation/views/widgets/product_details_view_app_bar.dart';
import 'package:laza_ecommerce/features/product_details/presentation/views/widgets/product_general_info.dart';
import 'package:laza_ecommerce/features/product_details/presentation/views/widgets/product_image_preview.dart';
import 'package:laza_ecommerce/features/product_details/presentation/views/widgets/product_quantity.dart';
import 'package:laza_ecommerce/features/product_details/presentation/views/widgets/reviews_list_view.dart';

class ProductDetailsViewBody extends StatelessWidget {
  const ProductDetailsViewBody({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ProductDetailsViewAppBar(),
          const ProductImagePreview(),
          const SizedBox(
            height: 10,
          ),
          const ProductGeneralInfo(),
          const SizedBox(
            height: 20,
          ),
          Text(
            'Description',
            style: Styles.textStyle17,
          ),
          const SizedBox(
            height: 5,
          ),
          const DescriptionAndReviewWidget(
            description:
                "Organic Mountain works as a seller for many organic growers of organic lemons. Organic lemons are easy to spot in your produce aisle. They are just like regular lemons, but they will usually have a few more scars on the outside of the lemon skin. Organic lemons are considered to be the world's finest lemon for juicing",
          ),
          const SizedBox(
            height: 10,
          ),
          HeadOfListViews(
              listViewTitle: 'Reviews',
              onPressed: () {
                GoRouter.of(context).push(AppRoutes.allTheReviewsViewPath);
              }),
          const ReviewsListView(itemCount: 3,),
          const SizedBox(
            height: 20,
          ),
          const ProductQuantity(),
          const SizedBox(
            height: 20,
          ),
          AddToCartButton(
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
