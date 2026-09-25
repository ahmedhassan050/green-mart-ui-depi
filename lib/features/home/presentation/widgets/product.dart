import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Product extends StatelessWidget {
  final String image;
  final String name;
  final String quantity;
  final String price;
  final VoidCallback? onTap;

  const Product({
    super.key,
    required this.image,
    required this.name,
    required this.price,
    required this.quantity,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 173.w,
        height: 248.51.h,
        padding: EdgeInsets.all(15.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16.r),
          border: Border.all(
            color: const Color(0xffE2E2E2),
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: SizedBox(
                child: Image.asset(
                  image,
                  width: 100.w,
                  height: 70.h,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            SizedBox(height: 33.4.h),
            Text(
              name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 16.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff181725),
              ),
            ),
            SizedBox(height: 5.h),
            Text(
              quantity,
              maxLines: 1,
              style: TextStyle(
                fontSize: 14.sp,
                fontWeight: FontWeight.w400,
                color: const Color(0xff7C7C7C),
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  price,
                  maxLines: 1,
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                    color: const Color(0xff181725),
                  ),
                ),
                Container(
                  width: 45.67.w,
                  height: 45.67.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(17.r),
                    color: const Color(0xff53B175),
                  ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}