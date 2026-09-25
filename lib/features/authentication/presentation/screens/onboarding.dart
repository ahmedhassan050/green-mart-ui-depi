import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:groceries_app_ui/features/authentication/presentation/screens/login_screen.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/buttom.dart';

class OnBordingScreen extends StatelessWidget {
  const OnBordingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            'assets/images/onbording.png',
            fit: BoxFit.cover,
            width: double.infinity,
            height: double.infinity,
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 25.11.w),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  'assets/images/white carrot.png',
                  width: 48.w,
                  height: 56.h,
                ),

                SizedBox(height: 35.h),

                Text(
                  'Welcome',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                Text(
                  'to our store',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 48.sp,
                    fontWeight: FontWeight.w400,
                  ),
                ),

                SizedBox(height: 12.h),

                Text(
                  'Ger your groceries as fast as one hour',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0xffFCFCFC),
                    fontSize: 16.sp,
                  ),
                ),

                SizedBox(height: 25.h),

                Buttom(
                  text: 'Get Started',
                  backgroundColor: Color(0xff53B175),
                  foregroundColor: Colors.white,
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => LoginScreen(),
                      ),
                    );
                  },
                ),

                SizedBox(height: 90.h),
              ],
            ),
          ),
        ],
      ),
    );
  }
}