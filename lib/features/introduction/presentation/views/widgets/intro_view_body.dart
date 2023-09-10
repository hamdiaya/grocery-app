import 'package:flutter/material.dart';

import 'package:laza_ecommerce/features/introduction/presentation/views/widgets/choose_auth.dart';

class IntroViewBody extends StatelessWidget {
  const IntroViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Padding(
          padding: EdgeInsets.only(left: 15,right: 15,bottom: 15),
          child: ChooseAuth(),
        ),
       
      ],
    );
  }
}
