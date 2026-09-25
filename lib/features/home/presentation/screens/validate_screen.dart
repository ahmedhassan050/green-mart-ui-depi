import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/buttom.dart';

class ValidateScreen extends StatelessWidget {
  const ValidateScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/background.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 20.h,
              horizontal: 20.w,
            ),
            child: Column(
              children: [
                Expanded(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Image.asset(
                          'assets/images/validation cheakout.png',
                          width: 200.w,
                          height: 190.h,
                        ),

                        SizedBox(height: 25.h),

                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Your Order has been\n accepted',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 28.sp,
                              fontWeight: FontWeight.w600,
                              color: const Color(0xff181725),
                            ),
                          ),
                        ),

                        SizedBox(height: 8.h),

                        SizedBox(
                          width: double.infinity,
                          child: Text(
                            'Your items has been placcd and is on\n'
                            'it’s way to being processed',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w400,
                              color: const Color(0xff7C7C7C),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

                Buttom(
                  text: 'Track Order',
                  backgroundColor: const Color(0xff53B175),
                  foregroundColor: const Color(0xffFFF9FF),
                  onPressed: () {},
                ),

                SizedBox(height: 10.h),

                Buttom(
                  text: 'Back to home',
                  backgroundColor: Colors.transparent,
                  foregroundColor: const Color(0xff181725),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}