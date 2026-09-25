import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app_ui/constants/app_text_styles.dart';
import 'package:groceries_app_ui/features/authentication/presentation/screens/login_screen.dart';
import 'package:pinput/pinput.dart';

class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final TextEditingController otpController = TextEditingController();

  int seconds = 23;
  Timer? timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (seconds > 0) {
        setState(() {
          seconds--;
        });
      } else {
        timer.cancel();
      }
    });
  }

  void resendOtp() {
    setState(() {
      seconds = 23;
      otpController.clear();
    });

    timer?.cancel();
    startTimer();
  }

  void confirmOtp() {
    final otp = otpController.text;

    if (otp.length == 5) {
      print('OTP: $otp');

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ),
      );
    }
  }

  @override
  void dispose() {
    timer?.cancel();
    otpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final defaultPinTheme = PinTheme(
      width: 70.w,
      height: 60.h,
      textStyle: TextStyle(
        fontSize: 18.sp,
        fontWeight: FontWeight.w600,
        color: const Color(0xff34444E),
      ),
      decoration: BoxDecoration(
        color: const Color(0xffF1F3F4),
        borderRadius: BorderRadius.circular(7.r),
      ),
    );

    final focusedPinTheme = defaultPinTheme.copyWith(
      decoration: BoxDecoration(
        color: const Color(0xffF1F3F4),
        borderRadius: BorderRadius.circular(7.r),
        border: Border.all(
          color: const Color(0xff52B879),
          width: 1.5.w,
        ),
      ),
    );

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back_ios_new,
            color: const Color(0xff1F2933),
            size: 20.sp,
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 60.h),

              Text(
                'Enter verification code',
                style: AppTextStyles.title.copyWith(
                  color: const Color(0xFF37474F),
                ),
              ),

              SizedBox(height: 7.h),

              Text(
                'We have sent SMS to 01XXXXXXXXXX',
                style: AppTextStyles.price.copyWith(
                  fontSize: 14.sp,
                  color: const Color(0xFF37474F),
                  fontWeight: FontWeight.w400,
                ),
              ),

              SizedBox(height: 22.h),

              Pinput(
                controller: otpController,
                length: 5,
                keyboardType: TextInputType.number,
                defaultPinTheme: defaultPinTheme,
                focusedPinTheme: focusedPinTheme,
                showCursor: true,
                onCompleted: (value) {
                  print('OTP: $value');
                },
              ),

              SizedBox(height: 31.h),

              Align(
                alignment: Alignment.centerRight,
                child: GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Change Phone Number',
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: const Color(0xff737D84),
                    ),
                  ),
                ),
              ),

              SizedBox(height: 27.h),

              SizedBox(
                width: 331.w,
                height: 61.h,
                child: ElevatedButton(
                  onPressed: confirmOtp,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xff52B879),
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                  ),
                  child: Text(
                    'Confirm',
                    style: TextStyle(
                      fontSize: 13.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
              ),

              SizedBox(height: 13.h),

              Center(
                child: seconds > 0
                    ? Text(
                        'Resend confirmation code (1:${seconds.toString().padLeft(2, '0')})',
                        style: TextStyle(
                          fontSize: 12.sp,
                          color: const Color(0xff333333),
                        ),
                      )
                    : GestureDetector(
                        onTap: resendOtp,
                        child: Text(
                          'Resend OTP',
                          style: TextStyle(
                            fontSize: 12.sp,
                            color: const Color(0xffF57C2C),
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}