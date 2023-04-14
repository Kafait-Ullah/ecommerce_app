import 'package:ecommerce_app/configs/app.dart';
import 'package:ecommerce_app/configs/app_dimensions.dart';
import 'package:ecommerce_app/configs/app_typography.dart';
import 'package:ecommerce_app/utils/utils.dart';
import 'package:ecommerce_app/view/dashBoard/dash_board.dart';
import 'package:ecommerce_app/widgets/manual_button.dart';
import 'package:flutter/material.dart';
import '../../configs/space.dart';
import '../../utils/consts.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({Key? key}) : super(key: key);
  static String id = 'onBording';

  @override
  Widget build(BuildContext context) {
    App.init(context);

    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: TextButton(
                onPressed: () {
                  // Handle skip button press
                },
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Skip ',
                      style: AppText.b2b!
                          .copyWith(fontFamily: 'Montserrat', color: sBlue),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios,
                      color: sBlue,
                    )
                  ],
                ),
              ),
            ),
            Space.y2!,
            SizedBox(
              height: AppDimensions.space(18),
              width: AppDimensions.space(18),
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Container(
                      height: AppDimensions.space(19),
                      width: AppDimensions.space(19),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors
                            .transparent, // to make the circle transparent
                        border: Border.all(
                          width: 2.0,
                          color: sBlue,
                        ),
                      )),
                  Positioned(
                      child: Container(
                    height: AppDimensions.space(15),
                    width: AppDimensions.space(15),
                    decoration: BoxDecoration(
                        color: Colors.grey[200], shape: BoxShape.circle),
                  )),
                  Container(
                    height: AppDimensions.space(15),
                    width: AppDimensions.space(15),
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                            image: AssetImage(StaticUtils.onBoarding))),
                  )
                ],
              ),
            ),
            Space.y2!,
            Text(
              'Quick Product Delivery',
              style: AppText.b2b!.copyWith(color: sBlack),
            ),
            Space.y1!,
            Padding(
              padding: Space.h1!,
              child: Text(
                "Loved the class Such beautiful land and collective impact infrastructure\n social entrepreneur.",
                style: AppText.b2!.copyWith(color: sLightBlack),
                textAlign: TextAlign.center,
              ),
            ),
            Space.y2!,
            CustomButton(
              buttonName: 'SIGN UP WITH FACEBOOK',
              color: sBlue,
              onPress: () {},
            ),
            Space.y1!,
            CustomButton(
              buttonName: 'SING IN',
              color: sOrange,
              onPress: () {},
            ),
            Space.y1!,
            TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, DashBoard.id);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Without SigIn ",
                      style: AppText.b2!.copyWith(color: sBlue),
                    ),
                    Text(
                      "Continue",
                      style: AppText.b2!.copyWith(color: sOrange),
                    ),
                  ],
                )),
          ],
        ),
      ),
    ));
  }
}
