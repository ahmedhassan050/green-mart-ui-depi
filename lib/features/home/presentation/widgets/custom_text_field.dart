import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTextField extends StatelessWidget {
  final String? labelText;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Widget? suffixIcon;
  final Widget? prefixIcon;
  final String? hintText;
  final Color? fillColor;

  const CustomTextField({
    super.key,
    this.labelText,
    this.validator,
    this.obscureText = false,
    this.suffixIcon,
    this.prefixIcon,
    this.fillColor,
    this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      decoration: InputDecoration(
        labelText: labelText,
        labelStyle: TextStyle(
          fontSize: 16.sp,
          color: const Color(0xff7C7C7C),
        ),
        suffixIcon: suffixIcon,
        prefixIcon: prefixIcon,
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Color(0xff7C7C7C),
        ),
        filled: fillColor != null,
        fillColor: fillColor,
        border: fillColor != null
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.r),
                borderSide: BorderSide.none,
              )
            : const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff7C7C7C),
                ),
              ),
        enabledBorder: fillColor != null
            ? OutlineInputBorder(
                borderRadius: BorderRadius.circular(15.r),
                borderSide: BorderSide.none,
              )
            : const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xff7C7C7C),
                ),
              ),
      ),
      validator: validator,
    );
  }
}