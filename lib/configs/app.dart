import 'package:ecommerce_app/configs/space.dart';
import 'package:ecommerce_app/configs/ui.dart';
import 'package:flutter/material.dart';

import 'app_dimensions.dart';
import 'app_typography.dart';

class App {
  static bool? isLtr;
  static bool showAds = false;

  static init(BuildContext context) {
    UI.init(context);
    AppDimensions.init();
    Space.init();
    AppText.init();
    isLtr = Directionality.of(context) == TextDirection.ltr;
  }
}
