import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tedawi/core/utils/colors.dart';

abstract class AppStyles {
  // Light ------------------------------------
  static TextStyle light24 = TextStyle(
    color: const Color(0xFF064060),
    fontSize: 24.sp,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w300,
  );
  // Regular ------------------------------------
  static TextStyle regular10 = TextStyle(
    color: const Color(0xFF064060),
    fontSize: 10.sp,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static TextStyle regular12 = TextStyle(
    color: AppColors.grey,
    fontSize: 12.sp,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static TextStyle regular14 = TextStyle(
    color: const Color(0xFF064060),
    fontSize: 14.sp,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static TextStyle regular16 = TextStyle(
    color: const Color(0xFF064060),
    fontSize: 16.sp,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  // Medium ------------------------------------
  static TextStyle medium12 = TextStyle(
    color: const Color(0xFF064060),
    fontSize: 12.sp,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
  static TextStyle medium14 = TextStyle(
    color: const Color(0xFF064060),
    fontSize: 14.sp,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
  static TextStyle styleMedium16 = TextStyle(
    color: const Color(0xFF064060),
    fontSize: 16.sp,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );

  // Semi-bold
  static TextStyle semiBold12 = TextStyle(
    color: const Color(0xFF064060),
    fontSize: 12.sp,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle semiBold14 = TextStyle(
    color: const Color(0xFF064060),
    fontSize: 14.sp,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle semiBold16 = TextStyle(
    color: Colors.white,
    fontSize: 16.sp,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle semiBold18 = TextStyle(
    color: const Color(0xFF064060),
    fontSize: 18.sp,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static TextStyle semiBold68 = TextStyle(
    color: const Color(0xFF064060),
    fontSize: 68.sp,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  // Bold ------------------------------------
  static TextStyle bold14 = TextStyle(
    color: const Color(0xFF4EB7F2),
    fontSize: 14.sp,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold16 = TextStyle(
    color: const Color(0xFF4EB7F2),
    fontSize: 16.sp,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold18 = TextStyle(
    color: const Color(0xFF4EB7F2),
    fontSize: 18.sp,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold24 = TextStyle(
    color: AppColors.main,
    fontSize: 24.sp,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  );
  static TextStyle bold32 = TextStyle(
    color: AppColors.main,
    fontSize: 32.sp,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
  );
}
