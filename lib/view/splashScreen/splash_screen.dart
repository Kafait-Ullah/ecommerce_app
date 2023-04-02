import 'dart:async';
import 'package:ecommerce_app/responsive/responsive.dart';
import 'package:ecommerce_app/view/dashBoard/dash_board.dart';
import 'package:ecommerce_app/view/onBoarding/on_boarding.dart';
import 'package:flutter/material.dart';

import '../../utils/consts.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);
  static String id = "/splash";
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // ignore: todo
    // TODO: implement initState
    super.initState();
    Timer(
        const Duration(seconds: 3),
        () => !Responsive.isMobile(context)
            ? Navigator.pushNamed(context, DashBoard.id)
            : Navigator.pushNamed(context, OnBoarding.id));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: sOrange,
      body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Center(
                child: Text(
              'Apex ',
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold),
            )),
          ]),
    );
  }
}
