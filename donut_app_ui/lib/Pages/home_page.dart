import 'package:donut_app_ui/Nav_Bar/bottom_nav_bar.dart';
import 'package:donut_app_ui/Pages/cart_page.dart';
import 'package:donut_app_ui/Pages/shop_page.dart';
import 'package:donut_app_ui/Tab_View/burder_tab.dart';
import 'package:donut_app_ui/Tab_View/donut_tab.dart';
import 'package:donut_app_ui/Tab_View/pancake_tab.dart';
import 'package:donut_app_ui/Tab_View/pizza_tab.dart';
import 'package:donut_app_ui/Tab_View/smoothie_tab.dart';
import 'package:donut_app_ui/util/my_tab.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  void navigateBottomBar(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _pages = [
    const ShopPage(),
    const CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar: MyBottomNavBar(
        onTabChange: (index) => navigateBottomBar(index),
      ),
      body: _pages[_selectedIndex],
    );
  }
}
