import 'package:ecommerce_app/configs/space.dart';
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
    final Size size = MediaQuery.of(context).size;
    return InkWell(
      onTap: onPress,
      child: Padding(
        padding: Space.h1!,
        child: Container(
            height: size.height * 0.07,
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
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: size.height * 0.017),
                      ))),
      ),
    );
  }
}
