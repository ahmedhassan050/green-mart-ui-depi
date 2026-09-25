import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:groceries_app_ui/features/home/presentation/screens/validate_screen.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/buttom.dart';
import 'package:groceries_app_ui/features/home/presentation/widgets/check_options.dart';

class CheckBottomSheet extends StatelessWidget {
  const CheckBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(
        horizontal: 15.w,
        vertical: 15.h,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Checkout',
                style: TextStyle(
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close),
              ),
            ],
          ),

          Divider(
            color: const Color(0xffE2E2E2),
            thickness: 1.20,
          ),

          CheakoutOptions(
            subTille: 'Select Method',
            title: 'Delivery',
          ),

          Divider(
            color: const Color(0xffE2E2E2),
            thickness: 1.20,
          ),

          CheakoutOptions(
            subTille: 'Select Method',
            title: 'Pament',
          ),

          Divider(
            color: const Color(0xffE2E2E2),
            thickness: 1.20,
          ),

          CheakoutOptions(
            subTille: 'Pick discount',
            title: 'Promo Code',
          ),

          Divider(
            color: const Color(0xffE2E2E2),
            thickness: 1.20,
          ),

          CheakoutOptions(
            subTille: '\$13.97',
            title: 'Total Cost',
          ),

          Divider(
            color: const Color(0xffE2E2E2),
            thickness: 1.20,
          ),

          Text(
            'By placing an order you agree to our',
            style: TextStyle(
              fontSize: 14.sp,
              color: const Color(0xff7C7C7C),
            ),
          ),

          Row(
            children: [
              Text(
                'Terms ',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              Text(
                'And ',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: const Color(0xff7C7C7C),
                ),
              ),
              Text(
                'Conditions',
                style: TextStyle(
                  fontSize: 14.sp,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
            ],
          ),

          SizedBox(height: 18.h),

          Buttom(
            text: 'Place Order',
            backgroundColor: const Color(0xff53B175),
            foregroundColor: const Color(0xffFFF9FF),
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => const ValidateScreen(),
                ),
              );
            },
          ),

          SizedBox(height: 10.h),
        ],
      ),
    );
  }
}