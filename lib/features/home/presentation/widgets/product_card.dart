import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:groceries_app_ui/constants/app_colors.dart';
import 'package:groceries_app_ui/constants/app_text_styles.dart';
import 'package:groceries_app_ui/features/home/presentation/models/product_model.dart';
import 'package:groceries_app_ui/features/home/presentation/screens/ProductScreen.dart';

class ProductCard extends StatelessWidget {
  final ProductModel product;

  const ProductCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProductScreen(
              name: product.name,
              price: product.price,
              image: product.image,
              weight: product.quantity,
            ),
          ),
        );
      },
      child: Container(
        width: 170.w,
        padding: EdgeInsets.all(10.w),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.r),
          border: Border.all(
            color: AppColors.border,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: Center(
                child: Image.asset(
                  product.image,
                  fit: BoxFit.contain,
                ),
              ),
            ),

            SizedBox(height: 5.h),

            Text(
              product.name,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.productName,
            ),

            SizedBox(height: 2.h),

            Text(
              product.quantity,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: AppTextStyles.productSubtitle,
            ),

            SizedBox(height: 5.h),

            Row(
              children: [
                Expanded(
                  child: Text(
                    product.price,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: AppTextStyles.price,
                  ),
                ),

                SizedBox(width: 5.w),

                Container(
                  height: 32.h,
                  width: 32.w,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 19.sp,
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