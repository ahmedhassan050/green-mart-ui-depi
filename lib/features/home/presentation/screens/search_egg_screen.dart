import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app_ui/features/home/presentation/screens/filter_screen.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/app_bar_text.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/product.dart';

class EggScreen extends StatelessWidget {
  const EggScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 24.70.w,
          ),
          child: Column(
            children: [
              SizedBox(height: 20.h),

              AppBarText(
                title: 'Dairy & Eggs',
                leading: IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  icon: Icon(
                    Icons.arrow_back_ios_new,
                    size: 20.sp,
                    color: const Color(0xff181725),
                  ),
                ),
                action: IconButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const FilterScreen(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.tune_rounded,
                    size: 20.sp,
                    color: const Color(0xff181725),
                  ),
                ),
              ),

              SizedBox(height: 10.h),

              Expanded(
                child: GridView.count(
                  crossAxisCount: 2,
                  crossAxisSpacing: 15.w,
                  mainAxisSpacing: 15.h,
                  childAspectRatio: 0.70,
                  children: [
                    Product(
                      image: 'assets/egg.png',
                      name: 'Diet Coke',
                      quantity: '355ml, Price',
                      price: '\$1.99',
                    ),
                    Product(
                      image: 'assets/egg2.png',
                      name: 'Sprite Can ',
                      quantity: '355ml, Price',
                      price: '\$1.50',
                    ),
                    Product(
                      image: 'assets/Egg Pasta.png',
                      name: 'Apple & Grape Juice',
                      quantity: '2L, Price',
                      price: '\$15.99',
                    ),
                    Product(
                      image: 'assets/Egg Noodles.png',
                      name: 'Orenge Juice',
                      quantity: '2L, Price',
                      price: '\$15.99',
                    ),
                    Product(
                      image: 'assets/Mayonnais Eggless.png',
                      name: 'Coca Cola Can',
                      quantity: '325ml, Price',
                      price: '\$4.99',
                    ),
                    Product(
                      image: 'assets/Egg Noodles 2.png',
                      name: 'Pepsi Can ',
                      quantity: '330ml, Price',
                      price: '\$4.99',
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}