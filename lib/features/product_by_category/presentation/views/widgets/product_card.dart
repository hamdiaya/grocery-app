import 'package:flutter/material.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza_ecommerce/core/utils/constants.dart';
import 'package:laza_ecommerce/core/utils/styles.dart';
import '../../../../../core/utils/design_size.dart';

class ProductCard extends StatefulWidget {
  const ProductCard(
      {super.key,
      required this.imgUrl,
      required this.price,
      required this.productName,
      required this.doze,
      required this.onTap});
  final String imgUrl;
  final String price;
  final String productName;
  final String doze;
  final void Function() onTap;

  @override
  State<ProductCard> createState() => _FeaturedProductCardState();
}

bool favour = false;

class _FeaturedProductCardState extends State<ProductCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onTap,
      child: Container(
        width: MediaQuery.of(context).size.width * 160 / DesignSize.width,
        decoration: BoxDecoration(
          color: greyFill,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    onPressed: () {
                      setState(() {
                        favour = !favour;
                      });
                    },
                    icon: !favour
                        ? const Icon(
                            Icons.favorite_outline,
                            color: grey,
                          )
                        : const Icon(
                            Icons.favorite,
                            color: Colors.red,
                          ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SvgPicture.asset(
                widget.imgUrl,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              widget.price,
              style: Styles.textStyle15.copyWith(color: primaryColor),
            ),
            Text(
              widget.productName,
              style: Styles.textStyle17.copyWith(
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              widget.doze,
              style: Styles.textStyle15.copyWith(color: grey),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
