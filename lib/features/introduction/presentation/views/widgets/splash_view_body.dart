import 'package:flutter/widgets.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:laza_ecommerce/core/utils/assets_data.dart';
import 'package:laza_ecommerce/core/utils/constants.dart';
import 'package:laza_ecommerce/core/utils/styles.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return  Column(
      mainAxisAlignment: MainAxisAlignment.center,
   
      children: [
        Center(child: SvgPicture.asset(AssetsData.logo)),
        const SizedBox(height: 20,),
        Text("BIG CART",style: Styles.textStyle25.copyWith(color: primaryColor,),),
        
      ],
    );
  }
}
