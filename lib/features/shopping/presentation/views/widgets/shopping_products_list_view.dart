import 'package:flutter/material.dart';
import 'package:laza_ecommerce/features/shopping/presentation/views/widgets/shopping_product_card.dart';

class ShoppingProductsListView extends StatefulWidget {
  const ShoppingProductsListView({super.key});

  @override
  State<ShoppingProductsListView> createState() => _ShoppingProductsListViewState();
}

class _ShoppingProductsListViewState extends State<ShoppingProductsListView> {
 List<String> items = ['', '', '', '', ''];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return  Padding(
            padding:  const EdgeInsets.only(bottom: 10),
            child:  Dismissible(
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
              key: Key(items[index]),
              child: const ShoppingProductCard()),
          );
        },
      ),
    );
  }
}
