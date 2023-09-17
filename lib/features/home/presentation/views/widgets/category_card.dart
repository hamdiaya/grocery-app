import 'package:flutter/material.dart';
import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/design_size.dart';
import '../../../../../core/utils/styles.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.categoryName,
    required this.icon,
  });
  final String categoryName;
  final IconData icon;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
            width: MediaQuery.of(context).size.width * 55 / DesignSize.width,
            height: MediaQuery.of(context).size.height * 55 / DesignSize.height,
            decoration: BoxDecoration(
              color: grey.withOpacity(0.2),
              borderRadius: BorderRadius.circular(100),
            ),
            child:Icon(
              icon,
              size: MediaQuery.of(context).size.width * 25 / DesignSize.width,
            )),
        const SizedBox(
          height: 11,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 80 / DesignSize.width,
          child: Text(
            categoryName,
            style: Styles.textStyle15.copyWith(color: grey),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
          ),
        )
      ],
    );
  }
}
