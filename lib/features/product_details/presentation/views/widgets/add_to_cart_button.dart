import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza_ecommerce/core/utils/constants.dart';
import 'package:laza_ecommerce/core/utils/design_size.dart';
import 'package:laza_ecommerce/core/utils/styles.dart';

class AddToCartButton extends StatelessWidget {
  const AddToCartButton({super.key, required this.onTap});
  final Function() onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: MediaQuery.of(context).size.height * 60 / DesignSize.height,
        decoration: BoxDecoration(
            color: primaryColor, borderRadius: BorderRadius.circular(10)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              const Expanded(child: SizedBox()),
              Text(
                'Add to cart',
                style: Styles.textStyle15.copyWith(color: Colors.white),
              ),
              const Expanded(child: SizedBox()),
              ColorFiltered(
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcATop),
                  child: SvgPicture.asset('assets/card.svg')),
            ],
          ),
        ),
      ),
    );
  }
}
