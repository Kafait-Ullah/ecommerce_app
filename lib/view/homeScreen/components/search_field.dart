import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../configs/app_dimensions.dart';
import '../../../utils/consts.dart';

class SearchField extends StatelessWidget {
  const SearchField({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimensions.space(3),
      width: AppDimensions.space(16),
      decoration: BoxDecoration(
        color: sLightGrey.withAlpha(50),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        cursorColor: sGrey,
        decoration: InputDecoration(
            prefixIcon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              color: sLightGrey.withAlpha(150),
              size: 20,
            ),
            border: InputBorder.none,
            hintText: 'Search for product',
            hintStyle: TextStyle(
              color: sLightGrey.withAlpha(200),
            )),
      ),
    );
  }
}
