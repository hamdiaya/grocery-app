import 'package:flutter/material.dart';
import 'package:laza_ecommerce/features/home/presentation/views/widgets/featured_product_card.dart';

class FeaturedProductsListView extends StatelessWidget {
  const FeaturedProductsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
          itemCount: 9,
          itemBuilder: (context, index) {
            final firstIndex = index * 2;
            final secondIndex = firstIndex + 1;
            if (firstIndex < 9 && secondIndex < 9) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 18),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    FeaturedProductCard(
                      imgUrl: 'assets/undraw_beer_xg5f.svg',
                      price: '22.33\$',
                      productName: 'Fresh Peach',
                      doze: 'dozen',
                      onTap: () {
                        
                      },
                    ),
                    FeaturedProductCard(
                      imgUrl: 'assets/undraw_beer_xg5f.svg',
                      price: '22.33\$',
                      productName: 'Fresh Peach',
                      doze: 'dozen',
                      onTap: () {},
                    ),
                  ],
                ),
              );
            } else if (firstIndex < 9) {
              return Row(
                children: [
                  FeaturedProductCard(
                    imgUrl: 'assets/undraw_beer_xg5f.svg',
                    price: '22.33\$',
                    productName: 'Fresh Peach',
                    doze: 'dozen',
                    onTap: () {},
                  ),
                ],
              );
            } else {
              return null;
            }
          }),
    );
  }
}
