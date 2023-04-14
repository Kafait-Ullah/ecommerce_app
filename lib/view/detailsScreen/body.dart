import 'package:ecommerce_app/configs/app_dimensions.dart';
import 'package:ecommerce_app/configs/app_typography.dart';
import 'package:ecommerce_app/configs/space.dart';
import 'package:ecommerce_app/utils/consts.dart';
import 'package:ecommerce_app/view/detailsScreen/details.dart';
import 'package:ecommerce_app/widgets/manual_button.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Body extends StatefulWidget {
  const Body({
    super.key,
    required this.args,
  });

  final ProductDetailsArguments args;

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    int selectedImage = 0;
    return SingleChildScrollView(
      child: SizedBox(
        height: AppDimensions.space(50),
        child: Stack(
          children: [
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: AppDimensions.space(35),
                width: double.infinity,
                decoration: BoxDecoration(
                  color: sLightGrey.withAlpha(50),
                ),
                child: Column(
                  children: [
                    SizedBox(
                      height: AppDimensions.space(10),
                      width: AppDimensions.space(15),
                      child: Hero(
                          tag: widget.args.product.id.toString(),
                          child: Image.asset(
                              widget.args.product.images[selectedImage])),
                    ),
                    Space.y1!,
                    SizedBox(
                      height: AppDimensions.space(3),
                      width: AppDimensions.space(16),
                      child: GestureDetector(
                        onTap: () => setState(() {
                           selectedImage;
                        }),
                        child: ListView.builder(
                          itemCount: widget.args.product.images.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Padding(
                            padding: Space.h!,
                            child: Container(
                              height: AppDimensions.space(3),
                              width: AppDimensions.space(3),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                widget.args.product.images[index],
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: AppDimensions.space(8),
              left: 0,
              right: 0,
              child: Container(
                height: AppDimensions.space(25),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: Column(
                  children: [
                    Space.y2!,
                    Padding(
                      padding: Space.h2!,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.args.product.title,
                          style: AppText.h1b!.copyWith(fontSize: 18),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                            height: AppDimensions.space(3),
                            width: AppDimensions.space(4.5),
                            decoration: BoxDecoration(
                                color: Colors.pink.withAlpha(40),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(18),
                                    bottomLeft: Radius.circular(18))),
                            child: const Icon(
                              FontAwesomeIcons.heart,
                              color: sOrange,
                              size: 19,
                            )),
                      ),
                    ),
                    Space.y1!,
                    Padding(
                      padding: Space.h2!,
                      child: Align(
                        alignment: Alignment.topLeft,
                        child: Text(
                          widget.args.product.description,
                          maxLines: 3,
                          style: AppText.l1!.copyWith(
                              fontSize: 17, color: sBlack.withAlpha(95)),
                        ),
                      ),
                    ),
                    Space.y1!,
                    Padding(
                      padding: Space.h2!,
                      child: InkWell(
                        onTap: () {},
                        child: Row(
                          children: [
                            Text(
                              'See More Details',
                              style: AppText.l1!
                                  .copyWith(color: sOrange, fontSize: 17),
                            ),
                            SizedBox(
                              width: AppDimensions.space(0.5),
                            ),
                            const Icon(
                              Icons.arrow_forward_ios,
                              color: sOrange,
                              size: 16,
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: AppDimensions.space(5),
              left: 0,
              right: 0,
              child: Container(
                height: AppDimensions.space(10),
                decoration: BoxDecoration(
                    color: sLightGrey.withAlpha(50),
                    borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
              ),
            ),
            Positioned(
              bottom: AppDimensions.space(0),
              left: 0,
              right: 0,
              child: Container(
                height: AppDimensions.space(10.5),
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
        ),
      ),
    );
  }
}
