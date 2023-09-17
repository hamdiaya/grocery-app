import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import '../utils/styles.dart';

class GeneralAppBar extends StatelessWidget {
  const GeneralAppBar({
    super.key, required this.title,
  });
  final String title;
  @override
  Widget build(BuildContext context) {
    return Row(
    
      children: [
        IconButton(
            onPressed: () {
              GoRouter.of(context).pop();
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
            )),
       const Expanded(child: SizedBox()),
        Text(
          title,
          style: Styles.textStyle25,
        ),
        const Expanded(child: SizedBox())
      ],
    );
  }
}
