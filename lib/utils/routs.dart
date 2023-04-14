import 'package:ecommerce_app/view/cartScreen/cart_screen.dart';
import 'package:ecommerce_app/view/dashBoard/dash_board.dart';
import 'package:ecommerce_app/view/detailsScreen/details.dart';
import 'package:ecommerce_app/view/homeScreen/home_screen.dart';
import 'package:ecommerce_app/view/favoritScreen/favorit_screen.dart';
import 'package:ecommerce_app/view/onBoarding/on_boarding.dart';
import 'package:ecommerce_app/view/profileScreen/profile_screen.dart';
import 'package:ecommerce_app/view/splashScreen/splash_screen.dart';
import 'package:flutter/material.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.id: (context) => const SplashScreen(),
  OnBoarding.id: (context) => const OnBoarding(),
  DashBoard.id: (context) => const DashBoard(),
  HomeScreen.id: (context) => const HomeScreen(),
  CartScreen.id: (context) => const CartScreen(),
  ProfileScreen.id: (context) => const ProfileScreen(),
  FavoritScreen.id: (context) => const FavoritScreen(),
  Details.id: (context) => const Details(),
};
