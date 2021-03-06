import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/configs/colors.dart';

class TextInput extends StatelessWidget {
  const TextInput({required this.hintText, this.obscure, Key? key})
      : super(key: key);
  final String hintText;
  final bool? obscure;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscure ?? false,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.only(
          left: 30.w,
          top: 16.h,
          bottom: 17.h,
        ),
        // constraints: BoxConstraints(maxHeight: 51.0.h, maxWidth: 325.w),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(100.0.r),
        ),
        hintText: hintText,
        hintStyle: TextStyle(
          color: AppColors.primaryColor,
          fontWeight: FontWeight.w400,
          fontSize: 13.sp,
          fontFamily: 'Poppins',
        ),
      ),
    );
  }
}
