import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:laza_ecommerce/core/utils/constants.dart';

class CustomNavigationBar extends StatelessWidget {
  const CustomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
      BottomNavigationBarItem(icon: ColorFiltered(
        colorFilter: const ColorFilter.mode(primaryColor,BlendMode.srcATop),
        child: SvgPicture.asset('assets/home.svg',)),label: ''),
      BottomNavigationBarItem(icon: SvgPicture.asset('assets/favorite.svg'),label: ''),
      BottomNavigationBarItem(icon: SvgPicture.asset('assets/card.svg'),label: ''),
      BottomNavigationBarItem(icon: SvgPicture.asset('assets/profile.svg'),label: ''),
    ]);
  }
}