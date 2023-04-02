import 'package:ecommerce_app/configs/app_dimensions.dart';
import 'package:ecommerce_app/view/homeScreen/components/search_field.dart';
import 'package:flutter/cupertino.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../configs/space.dart';
import '../../../utils/consts.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Space.h1!,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Expanded(child: SearchField()),
          Space.x!,
          Container(
              height: AppDimensions.space(3),
              width: AppDimensions.space(3),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: sLightGrey.withAlpha(50),
              ),
              child: Icon(
                FontAwesomeIcons.cartShopping,
                size: 17,
                color: sLightGrey.withAlpha(150),
              ))
        ],
      ),
    );
  }
}
