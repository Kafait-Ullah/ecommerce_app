import 'package:ecommerce_app/configs/configs.dart';
import 'package:ecommerce_app/model/Product.dart';
import 'package:ecommerce_app/utils/consts.dart';
import 'package:ecommerce_app/view/detailsScreen/custom_appbar.dart';
import 'package:ecommerce_app/widgets/manual_button.dart';
import 'package:flutter/material.dart';

class Details extends StatelessWidget {
  const Details({super.key});
  static String id = 'details';

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments args =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    return Scaffold(
        appBar: customAppBar(context, args),
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                color: sLightGrey.withAlpha(50),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 500,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Padding(
                  padding: Space.h1!,
                  child: Column(
                    children: [
                      Space.y2!,
                      Align(
                        alignment: Alignment.bottomLeft,
                        child: Text(
                          args.product.title,
                          style: AppText.h1b!.copyWith(fontSize: 18),
                        ),
                      ),
                      Space.y1!,
                      Text(
                        args.product.description,
                        style: AppText.l1!
                            .copyWith(fontSize: 17, color: sLightBlack),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 250,
                decoration: BoxDecoration(
                    color: sLightGrey.withAlpha(50),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
              ),
            ),
            Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                height: 150,
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Center(
                    child: CustomButton(
                  buttonName: 'Add To Cart',
                  color: sOrange,
                )),
              ),
            )
          ],
        ));
  }
}

class ProductDetailsArguments {
  final Product product;

  ProductDetailsArguments({required this.product});
}
