import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class ProductScreen extends StatefulWidget {
  final String name;
  final String price;
  final String image;
  final String weight;

  const ProductScreen({
    super.key,
    required this.name,
    required this.price,
    required this.image,
    required this.weight,
  });

  @override
  State<ProductScreen> createState() => _ProductScreenState();
}

class _ProductScreenState extends State<ProductScreen> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
            size: 20.sp,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.ios_share_outlined,
              color: Colors.black,
            ),
          ),
        ],
      ),

      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 290.h,
              width: double.infinity,
              color: const Color.fromARGB(255, 255, 254, 254),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 225.h,
                    child: Image.asset(
                      'assets/images/applee.png',
                      fit: BoxFit.contain,
                    ),
                  ),

                  Container(
                    width: 130.w,
                    height: 10.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50.r),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.25),
                          blurRadius: 15,
                          spreadRadius: 3,
                          offset: const Offset(0, 2),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 8.h),

                  SmoothPageIndicator(
                    controller: PageController(),
                    count: 3,
                    effect: ExpandingDotsEffect(
                      dotHeight: 6.h,
                      dotWidth: 6.w,
                      activeDotColor: const Color(0xff53B175),
                      dotColor: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),

            Padding(
              padding: EdgeInsets.all(20.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          widget.name,
                          style: TextStyle(
                            fontSize: 20.sp,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),

                  Text(
                    widget.weight,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 13.sp,
                    ),
                  ),

                  SizedBox(height: 20.h),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          IconButton(
                            onPressed: () {
                              if (quantity > 1) {
                                setState(() {
                                  quantity--;
                                });
                              }
                            },
                            icon: const Icon(Icons.remove),
                          ),

                          Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 16.w,
                              vertical: 8.h,
                            ),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.grey.shade300,
                              ),
                              borderRadius: BorderRadius.circular(8.r),
                            ),
                            child: Text(
                              quantity.toString(),
                              style: TextStyle(
                                fontSize: 14.sp,
                              ),
                            ),
                          ),

                          IconButton(
                            onPressed: () {
                              setState(() {
                                quantity++;
                              });
                            },
                            icon: const Icon(
                              Icons.add,
                              color: Color(0xff53B175),
                            ),
                          ),
                        ],
                      ),

                      Text(
                        widget.price,
                        style: TextStyle(
                          fontSize: 22.sp,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),

                  Divider(
                    height: 30.h,
                  ),

                  ExpansionTile(
                    tilePadding: EdgeInsets.zero,
                    title: Text(
                      'Product Detail',
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.keyboard_arrow_down,
                      color: Colors.black,
                    ),
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 15.h),
                        child: Text(
                          'Apples Are Nutritious. Apples May Be Good For Weight Loss. '
                          'Apples May Be Good For Your Heart. As Part Of A Healthy '
                          'And Varied Diet.',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13.sp,
                            height: 1.5,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Divider(
                    height: 1.h,
                  ),

                  ExpansionTile(
                    tilePadding: EdgeInsets.zero,
                    title: Text(
                      'Nutritions',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                      ),
                    ),
                    trailing: const Icon(
                      Icons.chevron_right,
                    ),
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 15.h),
                        child: Text(
                          'Calories: 52 kcal\n'
                          'Carbohydrates: 14g\n'
                          'Protein: 0.3g\n'
                          'Fat: 0.2g',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13.sp,
                            height: 1.6,
                          ),
                        ),
                      ),
                    ],
                  ),

                  Divider(
                    height: 1.h,
                  ),

                  ExpansionTile(
                    tilePadding: EdgeInsets.zero,
                    title: Text(
                      'Review',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14.sp,
                      ),
                    ),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 18.sp,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 18.sp,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 18.sp,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 18.sp,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.red,
                          size: 18.sp,
                        ),
                        Icon(
                          Icons.chevron_right,
                          size: 20.sp,
                        ),
                      ],
                    ),
                    children: [
                      Padding(
                        padding: EdgeInsets.only(bottom: 15.h),
                        child: Text(
                          'Very fresh and delicious!',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13.sp,
                          ),
                        ),
                      ),
                    ],
                  ),

                  SizedBox(height: 20.h),

                  SizedBox(
                    width: double.infinity,
                    height: 55.h,
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff53B175),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15.r),
                        ),
                      ),
                      child: Text(
                        'Add To Basket',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}