import 'package:flutter/material.dart';

import 'package:go_router/go_router.dart';

import 'package:laza_ecommerce/core/widgets/general_app_bar.dart';
import 'package:laza_ecommerce/core/widgets/general_button.dart';

import 'add_rating_widget.dart';
import 'add_review_text_field.dart';

class AddReviewViewBody extends StatelessWidget {
  const AddReviewViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController reviewController = TextEditingController();
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        children: [
          const GeneralAppBar(title: 'Write Reviews'),
          const Expanded(
            child: SizedBox(),
          ),
          const AddRatingWidget(),
          const SizedBox(
            height: 30,
          ),
          AddReviewTextField(
            controller: reviewController,
          ),
          const Expanded(
            child: SizedBox(),
          ),
          GeneralButton(
            option: 'add review',
            onTap: () {
       
            GoRouter.of(context).pop();
          }),
        ],
      ),
    );
  }
}
