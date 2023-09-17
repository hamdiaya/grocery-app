
import 'package:flutter/material.dart';
import 'package:laza_ecommerce/core/utils/constants.dart';
import 'package:laza_ecommerce/core/utils/design_size.dart';
import 'package:laza_ecommerce/core/utils/styles.dart';
import 'package:laza_ecommerce/features/shopping/presentation/views/widgets/timeline_dot_widget.dart';
import 'package:timelines/timelines.dart';

class ShippingInfoTimelines extends StatelessWidget {
  ShippingInfoTimelines({super.key, required this.pageNumber});
  final List<String> shippingProcess = ['Adress', 'Payment'];

  final int pageNumber;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 80 / DesignSize.height,
    
      child: Timeline.tileBuilder(
     
        scrollDirection: Axis.horizontal,
        builder: TimelineTileBuilder(
         
          itemCount: 2,
          endConnectorBuilder: (context, index) {
            if (index != shippingProcess.length - 1) {
              return SizedBox(
                  width:
                      MediaQuery.of(context).size.width * 20 / DesignSize.width,
                  child: const Divider(
                    color: primaryColor,
                    thickness: 2,
                  ));
            } else {
              return null;
            }
          },
          startConnectorBuilder: (context, index) {
            if (index != 0) {
              return SizedBox(
                  width:
                      MediaQuery.of(context).size.width * 20 / DesignSize.width,
                  child: const Divider(
                    color: primaryColor,
                    thickness: 2,
                  ));
            } else {
              return null;
            }
          },
          contentsBuilder: (context, index) => Text(
            shippingProcess[index],
            style: Styles.textStyle15.copyWith(color: grey),
          ),
          indicatorBuilder: (context, index) {
            int processNumber = index + 1;
            return TimeLineDotWidget(
                dotContent: (pageNumber <= index + 1)
                    ? Text(
                        '$processNumber',
                        style: Styles.textStyle13.copyWith(color: Colors.white),
                      )
                    : const Icon(
                        Icons.check,
                        color: Colors.white,
                      ));
          },
        ),
      ),
    );
  }
}
