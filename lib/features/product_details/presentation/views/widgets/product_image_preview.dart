import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';



import '../../../../../core/utils/design_size.dart';

class ProductImagePreview extends StatelessWidget {
  const ProductImagePreview({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
     
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.25,
      child: Center(
        child: SvgPicture.asset(
          'assets/undraw_beer_xg5f.svg',
          width: MediaQuery.of(context).size.width *
              150 /
              DesignSize.width,
          height: MediaQuery.of(context).size.height *
              150 /
              DesignSize.height,
        ),
      ),
    );
  }
}
