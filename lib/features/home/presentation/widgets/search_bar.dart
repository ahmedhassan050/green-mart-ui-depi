import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app_ui/constants/app_colors.dart';


class SearchBarWidget extends StatelessWidget {
  const SearchBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.h,
      decoration: BoxDecoration(
        color: AppColors.lightGrey,
        borderRadius: BorderRadius.circular(15.r),
      ),
      child:  Row(
        children: [
          SizedBox(width: 15.w),

          Icon(
            Icons.search,
            size: 22,
            color: AppColors.black,
          ),

          SizedBox(width: 10.w),

          Text(
            'Search Store',
            style: TextStyle(
              color: AppColors.grey,
              fontSize: 14.sp,
            ),
          ),
        ],
      ),
    );
  }
}