import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza_ecommerce/core/utils/constants.dart';
import 'package:laza_ecommerce/features/home/presentation/views/widgets/home_view_body.dart';

import '../../../../core/widgets/custom_navigation_bar.dart';


class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      bottomNavigationBar: const CustomNavigationBar(),
      body: HomeViewBody(),
    );
  }
}

