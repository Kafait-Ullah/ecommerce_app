import 'package:ecommerce_app/view/homeScreen/components/body.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);
  static String id = "/home";

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Body());
  }
}
