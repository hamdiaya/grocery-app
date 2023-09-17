import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:laza_ecommerce/core/utils/app_routes.dart';
import 'package:laza_ecommerce/core/utils/constants.dart';

class CustomNavigationBar extends StatefulWidget {
  const CustomNavigationBar({super.key});

  @override
  State<CustomNavigationBar> createState() => _CustomNavigationBarState();
}

int index = 0;
List<String> routesPath = [
  AppRoutes.homeViewPath,
  AppRoutes.favouriteProductsViewPath,
  AppRoutes.shoppingCartViewPath,
  AppRoutes.addReviewViewPath,
];

class _CustomNavigationBarState extends State<CustomNavigationBar> {
  @override
  Widget build(BuildContext context) {
    
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 30,
      currentIndex: index,
      selectedItemColor: primaryColor,
      items: [
        BottomNavigationBarItem(
          icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                  index == 0 ? primaryColor : grey, BlendMode.srcATop),
              child: SvgPicture.asset('assets/home.svg')),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                  index == 1 ? primaryColor : grey, BlendMode.srcATop),
              child: SvgPicture.asset('assets/favorite.svg')),
          label: 'wishlist',
        ),
        BottomNavigationBarItem(
          icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                  index == 2 ? primaryColor : grey, BlendMode.srcATop),
              child: SvgPicture.asset('assets/card.svg')),
          label: 'cart',
        ),
        BottomNavigationBarItem(
          icon: ColorFiltered(
              colorFilter: ColorFilter.mode(
                  index == 3 ? primaryColor : grey, BlendMode.srcATop),
              child: SvgPicture.asset('assets/profile.svg')),
          label: 'profile',
        ),
      ],
      onTap: (value) {
        index = value;
        GoRouter.of(context).pushReplacement(routesPath[value]);
      },
    );
  }
}
