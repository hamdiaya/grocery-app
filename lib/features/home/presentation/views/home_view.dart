import 'package:flutter/material.dart';
import 'package:laza_ecommerce/core/widgets/custom_navigation_bar.dart';
import 'package:laza_ecommerce/features/home/presentation/views/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int index = 0;

  @override
  Widget build(BuildContext context) {
    return const  Scaffold(
      bottomNavigationBar:CustomNavigationBar(), 
      body:  HomeViewBody(),
    );
  }
}
