import 'package:flutter/material.dart';

import 'package:groceries_app_ui/features/home/presentation/screens/account.dart';
import 'package:groceries_app_ui/features/home/presentation/screens/explore_screen.dart';
import 'package:groceries_app_ui/features/home/presentation/screens/favourite.dart';
import 'package:groceries_app_ui/features/home/presentation/screens/my_cart_screen.dart';
import 'package:groceries_app_ui/features/home/presentation/screens/shop_screen.dart';

import 'package:groceries_app_ui/features/home/presentation/widgets/home_bottom_nav.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 0;

  final List<Widget> screens = const [
    ShopScreen(),
    ExploreScreen(),
    CartScreen(),
    FavouriteScreen(),
    AccountScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: currentIndex,
        children: screens,
      ),

      bottomNavigationBar: BottomNavBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
      ),
    );
  }
}