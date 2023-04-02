import 'package:ecommerce_app/view/cartScreen/cart_screen.dart';
import 'package:ecommerce_app/view/homeScreen/home_screen.dart';
import 'package:ecommerce_app/view/profileScreen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../../utils/consts.dart';
import '../favoritScreen/favorit_screen.dart';

class DashBoard extends StatefulWidget {
  const DashBoard({Key? key}) : super(key: key);
  static String id = 'dashBoard';

  @override
  State<DashBoard> createState() => _DashBoardState();
}

class _DashBoardState extends State<DashBoard> {
  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    HomeScreen(),
    CartScreen(),
    FavoritScreen(),
    ProfileScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(
          _selectedIndex,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: sOrange.withOpacity(0.80),
        
        type: BottomNavigationBarType.fixed, // This is all you need!
        selectedLabelStyle: const TextStyle(fontFamily: 'Montserrat'),
        items: const [
          BottomNavigationBarItem(
              icon: Icon(FontAwesomeIcons.houseUser), label: 'home'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.cartShopping,
              ),
              label: 'Cart'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.heart,
              ),
              label: 'Favorit'),
          BottomNavigationBarItem(
              icon: Icon(
                FontAwesomeIcons.userLarge,
              ),
              label: 'Profile'),
        ],
        currentIndex: _selectedIndex,

        onTap: _onItemTapped,
      ),
    );
  }
}
