import 'package:fiutter/core/helper/app_color.dart';
import 'package:fiutter/features/bottom%20bar/Orders.dart';
import 'package:fiutter/features/bottom%20bar/cart.dart';
import 'package:fiutter/features/bottom%20bar/category.dart';
import 'package:fiutter/features/bottom%20bar/home.dart';
import 'package:fiutter/features/bottom%20bar/profile.dart';
import 'package:flutter/material.dart';

class HomeNav extends StatefulWidget {
  HomeNav({super.key});

  @override
  State<HomeNav> createState() => _HomeNavState();
}

class _HomeNavState extends State<HomeNav> {
  int currentIndex = 0;

  List<Widget> screens = [
    HomeScreen(),
    CategoriesScreen(),
    CartScreen(),
    Orders(),
    ProfileScreen(),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: screens[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        type: BottomNavigationBarType.fixed,

        selectedItemColor: AppColors.primary,
        unselectedItemColor: AppColors.brown,
        selectedFontSize: 16,
        unselectedFontSize: 12,
        elevation: 0,
        backgroundColor: Colors.transparent,

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: "Shop",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Explore",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: "Cart",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.featured_play_list_outlined),
            label: "Orders",
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: "Profile",
          ),
        ],
      ),
    );
  }
}