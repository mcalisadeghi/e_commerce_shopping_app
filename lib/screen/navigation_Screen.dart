import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:flutter_application_1/screen/cart_Screen.dart';
import 'package:flutter_application_1/screen/favorites_screen.dart';
import 'package:flutter_application_1/screen/home_screen.dart';
import 'package:flutter_application_1/screen/profile_screen.dart';

class NavigationScreen extends StatefulWidget {
  const NavigationScreen({super.key});

  @override
  State<NavigationScreen> createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  int pageIndex = 0;
  List<Widget> pages = const [
    HomeScreen(),
    CartScreen(),
    FavoritesScreen(),
    ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: pageIndex,
        children: pages,
      ),
      floatingActionButton: SafeArea(
        child: FloatingActionButton(
          onPressed: () {},
          child: Icon(
            Icons.qr_code,
            size: 20,
          ),
          backgroundColor: Color(
            0xFFDB3022,
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar(
        icons: const [
          CupertinoIcons.home,
          CupertinoIcons.cart,
          CupertinoIcons.heart,
          CupertinoIcons.profile_circled,
        ],
        activeIndex: pageIndex,
        onTap: (int index) {
          setState(
            () {
              pageIndex = index;
            },
          );
        },
      ),
    );
  }
}
