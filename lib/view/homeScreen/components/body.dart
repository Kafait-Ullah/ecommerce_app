import 'package:ecommerce_app/configs/space.dart';
import 'package:ecommerce_app/view/homeScreen/components/discount_banner.dart';
import 'package:ecommerce_app/view/homeScreen/components/home_header.dart';
import 'package:ecommerce_app/view/homeScreen/components/popular_products.dart';
import 'package:flutter/material.dart';

import 'categories.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
          child: Column(
        children: [
          Space.y1!,
          const HomeHeader(),
          Space.y1!,
          const DiscountBanner(),
          Space.y1!,
          const Categories(),
          Space.y1!,
          const PopularProducts()
        ],
      )),
    );
  }
}
