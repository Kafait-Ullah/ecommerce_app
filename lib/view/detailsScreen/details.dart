import 'package:ecommerce_app/model/Product.dart';
import 'package:ecommerce_app/view/detailsScreen/body.dart';
import 'package:ecommerce_app/view/detailsScreen/custom_appbar.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});
  static String id = 'details';

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments args =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
        appBar: customAppBar(context, args), body: Body(args: args));
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
