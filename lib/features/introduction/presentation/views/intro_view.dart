import 'package:flutter/material.dart';
import 'package:laza_ecommerce/core/utils/constants.dart';

import 'package:laza_ecommerce/features/introduction/presentation/views/widgets/intro_view_body.dart';

class IntroView extends StatelessWidget {
  const IntroView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: primaryColor,
      body: IntroViewBody(),
    );
  }
}
