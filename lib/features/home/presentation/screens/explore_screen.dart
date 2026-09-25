import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app_ui/features/home/presentation/screens/beverages_screen.dart';
import 'package:groceries_app_ui/features/home/presentation/screens/egg_screen.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/app_bar_text.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/custom_text_field.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/explore_product.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: InkWell(
          onTap: () {
            FocusScope.of(context).unfocus();
          },
          child: Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 24.70.w,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 15.h),

                  const AppBarText(
                    title: 'Find Products',
                  ),

                  SizedBox(height: 30.h),

                  CustomTextField(
                    hintText: 'Search Store',
                    prefixIcon: const Icon(
                      Icons.search_sharp,
                      color: Color(0xff181B19),
                    ),
                    fillColor: const Color(0xffF2F3F2),
                  ),

                  SizedBox(height: 15.h),

                  GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15.w,
                    mainAxisSpacing: 15.h,
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    childAspectRatio: 0.93,
                    children: [
                      ExploreProduct(
                        image: 'assets/images/vegetable.png',
                        name: 'Fresh Fruits & Vegetable',
                        color: const Color(0xff53B175).withOpacity(0.15),
                        borderColor: const Color(0xff53B175),
                      ),

                      ExploreProduct(
                        image: 'assets/images/oil.png',
                        name: 'Cooking Oil & Ghee',
                        color: const Color(0xffF8A44C).withOpacity(0.15),
                        borderColor: const Color(0xffF8A44C),
                      ),

                      ExploreProduct(
                        image: 'assets/images/meat.png',
                        name: 'Meat & Fish',
                        color: const Color(0xffF7A593).withOpacity(0.15),
                        borderColor: const Color(0xffF7A593),
                      ),

                      ExploreProduct(
                        image: 'assets/images/bakery.png',
                        name: 'Bakery & Snacks',
                        color: const Color(0xffD3B0E0).withOpacity(0.15),
                        borderColor: const Color(0xffD3B0E0),
                      ),

                      ExploreProduct(
                        image: 'assets/images/dairy.png',
                        name: 'Dairy & Eggs',
                        color: const Color(0xffFDE598).withOpacity(0.15),
                        borderColor: const Color(0xffFDE598),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const EggScreen(),
                            ),
                          );
                        },
                      ),

                      ExploreProduct(
                        image: 'assets/images/beverages.png',
                        name: 'Beverages',
                        color: const Color(0xffB7DFF5).withOpacity(0.15),
                        borderColor: const Color(0xffB7DFF5),
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const BeveragesScreen(),
                            ),
                          );
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}