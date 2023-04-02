import 'package:ecommerce_app/configs/app_dimensions.dart';
import 'package:ecommerce_app/configs/app_typography.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../configs/space.dart';
import '../../../utils/consts.dart';

class Categories extends StatelessWidget {
  const Categories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {'icon': FontAwesomeIcons.bolt, 'text': 'Flash Deals'},
      {'icon': FontAwesomeIcons.gamepad, 'text': 'Game'},
      {'icon': FontAwesomeIcons.gift, 'text': 'Gift \n Box'},
      {'icon': FontAwesomeIcons.plus, 'text': 'More'},
    ];
    return Padding(
      padding: Space.h1!,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
            categories.length,
            (index) => CategoryCard(
                  icon: categories[index]['icon'],
                  text: categories[index]['text'],
                  press: () {},
                )),
      ),
    );
  }
}

class CategoryCard extends StatelessWidget {
  final IconData? icon;
  final String? text;
  final GestureTapCallback press;

  const CategoryCard({
    super.key,
    required this.icon,
    required this.text,
    required this.press,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: Space.h!,
        child: GestureDetector(
          onTap: press,
          child: Container(
            height: AppDimensions.space(6),
            width: AppDimensions.space(4.5),
            decoration: BoxDecoration(
                color: sOrange.withOpacity(0.25),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon!,
                  color: sOrange,
                ),
                Text(
                  maxLines: 2,
                  textAlign: TextAlign.center,
                  text!,
                  style: AppText.l1!.copyWith(
                    color: sOrange,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
