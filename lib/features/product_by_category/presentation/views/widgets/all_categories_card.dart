import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/design_size.dart';
import '../../../../home/presentation/views/widgets/category_card.dart';

class AllCategoriesCard extends StatelessWidget {
  const AllCategoriesCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
       width: MediaQuery.of(context).size.width*120/DesignSize.width,
       height: MediaQuery.of(context).size.height*120/DesignSize.height,
       decoration:  BoxDecoration(
        color: greyFill,
         borderRadius: BorderRadius.circular(10),
       ),
       child: const CategoryCard(categoryName: 'vegetables', icon: Icons.apple) ,
    );
  }
}

