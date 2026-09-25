import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppBarText extends StatelessWidget {
  final String title;
  final Widget? leading;
  final Widget? action;

  const AppBarText({super.key, required this.title, this.leading, this.action});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        if (leading != null) leading! else  SizedBox(width: 48.w),

        Expanded(
          child: Center(
            child: Text(
              title,
              style: TextStyle(
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
                color: Color(0xff181725),
              ),
            ),
          ),
        ),

        if (action != null) action! else  SizedBox(width: 48.w),
      ],
    );
  }
}