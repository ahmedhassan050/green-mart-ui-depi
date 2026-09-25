import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CheakoutOptions extends StatelessWidget {
  final String subTille;
  final String title;

  const CheakoutOptions({
    super.key,
    required this.subTille,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 10.h),

        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20.w,
          ),
          child: Row(
            children: [
              Text(
                title,
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff7C7C7C),
                ),
              ),

              const Spacer(),

              Text(
                subTille,
                style: TextStyle(
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                  color: const Color(0xff181725),
                ),
              ),

              Icon(
                Icons.chevron_right,
                size: 22.sp,
                color: const Color(0xff181725),
              ),
            ],
          ),
        ),

        SizedBox(height: 10.h),
      ],
    );
  }
}