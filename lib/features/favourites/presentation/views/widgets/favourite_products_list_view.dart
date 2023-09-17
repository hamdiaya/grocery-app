import 'package:flutter/material.dart';
import 'package:laza_ecommerce/features/favourites/presentation/views/widgets/favourite_product_card.dart';

class FavouriteProductsListView extends StatefulWidget {
  const FavouriteProductsListView({super.key});

  @override
  State<FavouriteProductsListView> createState() =>
      _FavouriteProductsListViewState();
}

class _FavouriteProductsListViewState extends State<FavouriteProductsListView> {
  List<String> items = ['', '', '', '', ''];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: items.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              bottom: 10,
            ),
            child: Dismissible(
              key: Key(items[index]),
              direction: DismissDirection.endToStart,
              background: Container(
                color: Colors.red,
                alignment: Alignment.centerRight,
                child: const Padding(
                  padding: EdgeInsets.only(right: 50),
                  child: Icon(
                    Icons.delete,
                    color: Colors.white,
                  ),
                ),
              ),
              child: const FavouriteProductCard(),
            ),
          );
        },
      ),
    );
  }
}
