import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app_ui/constants/app_colors.dart';
import 'package:groceries_app_ui/constants/app_text_styles.dart';
import 'package:groceries_app_ui/features/authentication/presentation/screens/verfication_screen.dart';

class NumberScreen extends StatelessWidget {
  const NumberScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.black,
            size: 20,
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 55.h),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'Enter your mobile number',
                style: AppTextStyles.title.copyWith(
                  color: const Color(0xFF37474F),
                ),
              ),
            ),

            SizedBox(height: 8.h),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Text(
                'We need to verify you. We will send you a one\n'
                'time verification code.',
                style: TextStyle(
                  fontSize: 13.sp,
                  color: const Color(0xFF7B8490),
                  height: 1.4,
                ),
              ),
            ),

            SizedBox(height: 42.h),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: TextField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: '01xxxxxxxxx',
                  filled: true,
                  fillColor: const Color(0xFFF0F1F2),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15.r),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),
            ),

            SizedBox(height: 46.6.h),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 30.w),
              child: SizedBox(
                width: 331.w,
                height: 56.6.h,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            const VerificationScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primary,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.1.r),
                    ),
                  ),
                  child: Text(
                    'Next',
                    style: TextStyle(
                      color: AppColors.white,
                      fontSize: 14.4.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}