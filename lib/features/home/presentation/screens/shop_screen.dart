import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app_ui/constants/app_colors.dart';
import 'package:groceries_app_ui/features/home/presentation/models/product_model.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/carousel_slider.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/category_card.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/location_header.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/product_card.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/search_bar.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/section_header.dart';

class ShopScreen extends StatelessWidget {
  const ShopScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<ProductModel> exclusiveProducts = [
      ProductModel(
        name: 'Organic Bananas',
        quantity: '7pcs, Priceg',
        price: '\$4.99',
        image: 'assets/images/banana.png',
      ),
      ProductModel(
        name: 'Red Apple',
        quantity: '1kg, Priceg',
        price: '\$4.99',
        image: 'assets/images/apple.png',
      ),
    ];

    final List<ProductModel> bestSellingProducts = [
      ProductModel(
        name: 'Bell Pepper',
        quantity: '1kg, Priceg',
        price: '\$4.99',
        image: 'assets/images/pepper.png',
      ),
      ProductModel(
        name: 'pngfuel',
        quantity: '1kg, Priceg',
        price: '\$4.99',
        image: 'assets/images/pngfuel.png',
      ),
    ];

    final List<ProductModel> groceryProducts = [
      ProductModel(
        name: 'Beef Bone',
        quantity: '1kg, Priceg',
        price: '\$4.99',
        image: 'assets/images/beef.png',
      ),
      ProductModel(
        name: 'Broiler Chicken',
        quantity: '1kg, Priceg',
        price: '\$4.99',
        image: 'assets/images/chicken.png',
      ),
    ];

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
            vertical: 15.h,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/carrot.png',
                  height: 40.h,
                ),
              ),

              SizedBox(height: 15.h),

              const LocationWidget(),

              SizedBox(height: 20.h),

              const SearchBarWidget(),

              SizedBox(height: 20.h),

              const CustomCarouselSlider(),

              SizedBox(height: 25.h),

              const SectionHeader(
                title: 'Exclusive Offer',
              ),

              SizedBox(height: 15.h),

              SizedBox(
                height: 230.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: exclusiveProducts.length,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 12.w);
                  },
                  itemBuilder: (context, index) {
                    return ProductCard(
                      product: exclusiveProducts[index],
                    );
                  },
                ),
              ),

              SizedBox(height: 25.h),

              const SectionHeader(
                title: 'Best Selling',
              ),

              SizedBox(height: 15.h),

              SizedBox(
                height: 230.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: bestSellingProducts.length,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 12.w);
                  },
                  itemBuilder: (context, index) {
                    return ProductCard(
                      product: bestSellingProducts[index],
                    );
                  },
                ),
              ),

              SizedBox(height: 25.h),

              const SectionHeader(
                title: 'Groceries',
              ),

              SizedBox(height: 15.h),

              SizedBox(
                height: 100.h,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    const GroceryCategoryCard(
                      title: 'Pulses',
                      image: 'assets/images/pulses.png',
                      color: AppColors.categoryOrange,
                    ),
                    SizedBox(width: 12.w),
                    const GroceryCategoryCard(
                      title: 'Rice',
                      image: 'assets/images/rice.png',
                      color: AppColors.categoryGreen,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 20.h),

              SizedBox(
                height: 230.h,
                child: ListView.separated(
                  scrollDirection: Axis.horizontal,
                  itemCount: groceryProducts.length,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 12.w);
                  },
                  itemBuilder: (context, index) {
                    return ProductCard(
                      product: groceryProducts[index],
                    );
                  },
                ),
              ),

              SizedBox(height: 20.h),
            ],
          ),
        ),
      ),
    );
  }
}