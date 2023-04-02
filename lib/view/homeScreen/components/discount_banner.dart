import 'package:ecommerce_app/configs/app_dimensions.dart';
import 'package:ecommerce_app/configs/app_typography.dart';
import 'package:ecommerce_app/configs/space.dart';
import 'package:flutter/material.dart';

import '../../../utils/consts.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Space.h1!,
      child: Container(
        height: AppDimensions.space(6),
        width: double.infinity,
        decoration: BoxDecoration(
            color: sBlue, borderRadius: BorderRadius.circular(15)),
        child: Padding(
          padding: EdgeInsets.only(left: AppDimensions.space(1)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'A Summer Surprice',
                style: AppText.l1b!
                    .copyWith(color: Colors.white, fontFamily: poppins),
              ),
              Text(
                'Cashback 20%',
                style: AppText.b1b!
                    .copyWith(color: Colors.white, fontFamily: poppins),
              )
            ],
          ),
        ),
      ),
    );
  }
}
