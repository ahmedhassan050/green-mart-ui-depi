import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomCarouselSlider extends StatefulWidget {
  const CustomCarouselSlider({super.key});

  @override
  State<CustomCarouselSlider> createState() =>
      _CustomCarouselSliderState();
}

class _CustomCarouselSliderState extends State<CustomCarouselSlider> {
  int currentIndex = 0;

  final List<String> images = [
    'assets/images/banner1.png',
    'assets/images/banner2.png',
    'assets/images/banner3.png',
    'assets/images/banner4.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 150.h,
            viewportFraction: 1.0,
            autoPlay: true,
            autoPlayInterval: const Duration(seconds: 3),
            onPageChanged: (i, r) {
              setState(() {
                currentIndex = i;
              });
            },
          ),
          items: images.map((image) {
            return Container(
              width: MediaQuery.of(context).size.width,
              margin: EdgeInsets.symmetric(
                horizontal: 5.w,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.r),
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            );
          }).toList(),
        ),

        // Smooth Page Indicator
        Positioned(
          bottom: 10.h,
          child: AnimatedSmoothIndicator(
            activeIndex: currentIndex,
            count: images.length,
            effect: WormEffect(
              dotHeight: 8.h,
              dotWidth: 8.w,
              spacing: 6.w,
            ),
          ),
        ),
      ],
    );
  }
}