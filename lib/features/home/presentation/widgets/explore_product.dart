import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ExploreProduct extends StatelessWidget {
  final String image;
  final String name;
  final Color color;
  final Color borderColor;
  final VoidCallback? onTap;

  const ExploreProduct({
    super.key,
    required this.image,
    required this.name,
    required this.color,
    required this.borderColor,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        height: 189.11.h,
        padding: EdgeInsets.symmetric(
          horizontal: 10.w,
        ),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: borderColor,
            width: 2,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 20.h),

            SizedBox(
              width: 110.w,
              height: 80.h,
              child: Image.asset(
                image,
                fit: BoxFit.contain,
              ),
            ),

            SizedBox(height: 12.h),

            Center(
              child: Text(
                name,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                  color: const Color(0xff181725),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}