import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';


class ProductDetailsViewAppBar extends StatelessWidget {
  const ProductDetailsViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.arrow_back,
            size: 30,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: ColorFiltered(
              colorFilter:
                  const ColorFilter.mode(Colors.black, BlendMode.srcATop),
              child: SvgPicture.asset(
                'assets/card.svg',
                width: 25,
                height: 25,
              )),
        ),
      ],
    );
  }
}
