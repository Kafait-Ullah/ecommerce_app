import 'package:ecommerce_app/configs/app_dimensions.dart';
import 'package:ecommerce_app/configs/app_typography.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  final bool loading;
  String buttonName = '';
  final Color color;
  final VoidCallback? onPress;
  CustomButton(
      {super.key,
      required this.buttonName,
      required this.color,
      this.onPress,
      this.loading = false});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
          height: AppDimensions.space(3.5),
          width: AppDimensions.space(22),
          decoration: BoxDecoration(
              color: color,
              borderRadius: const BorderRadius.all(Radius.circular(16.0))),
          child: Center(
              child: loading
                  ? const CircularProgressIndicator(
                      strokeWidth: 4,
                      color: Colors.white,
                    )
                  : Text(
                      buttonName,
                      style: AppText.b1!
                          .copyWith(color: Colors.white, fontSize: 17),
                    ))),
    );
  }
}
