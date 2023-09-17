import 'package:flutter/material.dart';
import 'package:laza_ecommerce/features/product_details/presentation/views/widgets/review_widget.dart';

class ReviewsListView extends StatelessWidget {
  const ReviewsListView({super.key,  this.itemCount});
  final int? itemCount;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: itemCount,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: ReviewWidget(),
          );
        },
      ),
    );
  }
}
