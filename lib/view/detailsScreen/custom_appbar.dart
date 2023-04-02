import 'package:ecommerce_app/configs/app_dimensions.dart';
import 'package:ecommerce_app/utils/consts.dart';
import 'package:ecommerce_app/view/detailsScreen/details.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_round_button.dart';

AppBar customAppBar(BuildContext context, ProductDetailsArguments args) {
  return AppBar(
      backgroundColor: sLightGrey.withAlpha(50),
      elevation: 0,
      leading: Center(
        child: Padding(
          padding: EdgeInsets.only(left: AppDimensions.space(1)),
          child: CustomRoundButton(
            onPress: () {
              Navigator.pop(context);
            },
          ),
        ),    
      ),
      actions: [
        Center(
          child: Padding(
            padding: EdgeInsets.only(right: AppDimensions.space(1)),
            child: Container(
              height: AppDimensions.space(2),
              width: AppDimensions.space(4),
              decoration: BoxDecoration(
                  color: sLightGrey.withAlpha(50),
                  borderRadius: BorderRadius.circular(15)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    args.product.rating.toString(),
                    style: const TextStyle(color: sLightBlack),
                  ),
                  const Icon(
                    Icons.star,
                    color: Colors.orangeAccent,
                    size: 17,
                  )
                ],
              ),
            ),
          ),
        )
      ]);
}
