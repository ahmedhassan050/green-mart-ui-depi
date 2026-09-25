import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class CartFavItems extends StatefulWidget {
  final String image;
  final String name;
  final String quantity;
  final String price;
  final bool showQuantity;
  final IconData? Icon;

  const CartFavItems({
    super.key,
    required this.image,
    required this.name,
    required this.quantity,
    required this.price,
    this.showQuantity = true,
    this.Icon,
  });

  @override
  State<CartFavItems> createState() => _CartFavItemsState();
}

class _CartFavItemsState extends State<CartFavItems> {
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Row(
            children: [
              Image.asset(
                widget.image,
                width: 70.w,
                height: 70.h,
                fit: BoxFit.contain,
              ),

              SizedBox(width: 20.w),

              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            widget.name,
                            style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff181725),
                            ),
                          ),
                        ),
                        Icon(
                          widget.Icon,
                          color: const Color(0xffB3B3B3),
                          size: 25.sp,
                        ),
                      ],
                    ),

                    SizedBox(height: 5.h),

                    Text(
                      widget.quantity,
                      style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff7C7C7C),
                        fontSize: 14.sp,
                      ),
                    ),

                    SizedBox(height: 10.h),

                    Row(
                      children: [
                        if (widget.showQuantity)
                          Row(
                            children: [
                              IconButton(
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(
                                  minWidth: 35.w,
                                  minHeight: 35.h,
                                ),
                                onPressed: () {
                                  if (quantity > 1) {
                                    setState(() {
                                      quantity--;
                                    });
                                  }
                                },
                                icon: Icon(
                                  Icons.remove,
                                  color: const Color(0xff53B175),
                                  size: 17.sp,
                                ),
                              ),

                              Container(
                                width: 45.w,
                                height: 45.h,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: const Color(0xffE2E2E2),
                                  ),
                                  borderRadius: BorderRadius.circular(15.r),
                                ),
                                child: Text(
                                  '$quantity',
                                  style: TextStyle(
                                    fontSize: 18.sp,
                                  ),
                                ),
                              ),

                              IconButton(
                                padding: EdgeInsets.zero,
                                constraints: BoxConstraints(
                                  minWidth: 35.w,
                                  minHeight: 35.h,
                                ),
                                onPressed: () {
                                  setState(() {
                                    quantity++;
                                  });
                                },
                                icon: Icon(
                                  Icons.add,
                                  color: const Color(0xff53B175),
                                  size: 17.sp,
                                ),
                              ),
                            ],
                          ),

                        const Spacer(),

                        Text(
                          widget.price,
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            fontSize: 18.sp,
                            color: const Color(0xff181725),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),

          SizedBox(height: 10.h),

          const Divider(
            color: Color(0xffE2E2E2B2),
          ),
        ],
      ),
    );
  }
}