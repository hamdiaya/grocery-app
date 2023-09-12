import 'package:flutter/material.dart';

import '../../../../../core/utils/constants.dart';
import '../../../../../core/utils/design_size.dart';
import '../../../../../core/utils/styles.dart';

class ProductQuantity extends StatefulWidget {
  const ProductQuantity({
    super.key,
  });

  @override
  State<ProductQuantity> createState() => _ProductQuantityState();
}

int quantity = 0;

class _ProductQuantityState extends State<ProductQuantity> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 50 / DesignSize.height,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        children: [
          const SizedBox(
            width: 20,
          ),
          Text(
            'Quantity',
            style: Styles.textStyle13.copyWith(color: grey),
          ),
          const Expanded(child: SizedBox()),
          IconButton(
              onPressed: () {
               setState(() {
                if(quantity!=0){
                  quantity--;
                }
                  
               });
              },
              icon: const Icon(
                Icons.remove,
                color: primaryColor,
              )),
          const SizedBox(
            width: 10,
          ),
          Text(
            '$quantity',
            style: Styles.textStyle17,
          ),
          const SizedBox(
            width: 10,
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  quantity++;
                });
              },
              icon: const Icon(
                Icons.add,
                color: primaryColor,
              )),
        ],
      ),
    );
  }
}
