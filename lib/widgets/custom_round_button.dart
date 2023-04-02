import 'package:ecommerce_app/configs/app_dimensions.dart';
import 'package:ecommerce_app/utils/consts.dart';
import 'package:flutter/material.dart';

class CustomRoundButton extends StatelessWidget {
  final VoidCallback? onPress;
  const CustomRoundButton({super.key, this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: AppDimensions.space(2),
        width: AppDimensions.space(2),
        decoration: BoxDecoration(
            color: sLightGrey.withAlpha(50), shape: BoxShape.circle),
        child: const Icon(
          Icons.arrow_back_ios_new,
          size: 15,
          color: sLightBlack,
        ),
      ),
    );
  }
}
