import 'package:ecommerce_app/configs/configs.dart';
import 'package:ecommerce_app/view/detailsScreen/details.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_app/model/Product.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../../utils/consts.dart';

class PopularProducts extends StatelessWidget {
  const PopularProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: Space.h1!,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Popular Products',
                style: AppText.b2!.copyWith(),
              ),
              InkWell(
                onTap: () {},
                child: Text('See more',
                    style: AppText.l1!.copyWith(color: sLightGrey)),
              ),
            ],
          ),
        ),
        Space.y1!,
        Padding(
          padding: Space.h1!,
          child: SizedBox(
              height: AppDimensions.space(20),
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: demoProducts.length,
                itemBuilder: (context, index) {
                  if (demoProducts[index].isPopular) {
                    return ProductCard(product: demoProducts[index]);
                  }
                  return const SizedBox.shrink();
                },
              )),
        )
      ],
    );
  }
}

class ProductCard extends StatelessWidget {
  final Product product;

  const ProductCard({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushNamed(context, Details.id,arguments: ProductDetailsArguments(product: product)),
      child: Padding(
        padding: Space.h!,
        child: SizedBox(
          height: AppDimensions.space(16),
          width: AppDimensions.space(8),
          // decoration: BoxDecoration(color: Colors.amber),
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: 1.028,
                child: Container(
                  height: AppDimensions.space(8),
                  width: AppDimensions.space(8),
                  decoration: BoxDecoration(
                      color: sLightGrey.withAlpha(50),
                      borderRadius: BorderRadius.circular(15)),
                  child: Hero(
                      tag: product.id.toString(),
                      child: Image.asset(product.images[0])),
                ),
              ),
              Space.y!,
              Text(
                product.title.toString(),
                style: AppText.l1,
                maxLines: 2,
              ),
              Space.y!,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('\$${product.price}',
                      style: AppText.l1b!.copyWith(color: sOrange)),
                  InkWell(
                    borderRadius: BorderRadius.circular(50),
                    onTap: () {},
                    child: Container(
                        height: 25,
                        width: 25,
                        decoration: BoxDecoration(
                          color: sLightGrey.withAlpha(50),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          FontAwesomeIcons.heart,
                          size: 15,
                          color: sOrange,
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
