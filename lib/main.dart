import 'package:flutter/material.dart';
import 'package:laza_ecommerce/core/utils/app_routes.dart';

void main() {
  runApp(const LasaApp());
}
class LasaApp extends StatelessWidget {
  const LasaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: MaterialApp.router(
    routerConfig: AppRoutes.router,
    theme: ThemeData.light(),
    debugShowCheckedModeBanner: false,
      ),
    );
  }
}
