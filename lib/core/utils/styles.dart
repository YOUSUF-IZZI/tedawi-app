import 'package:flutter/material.dart';
import 'package:tedawi/core/utils/colors.dart';

abstract class AppStyles {
  // Light ------------------------------------
  static const TextStyle light24 = TextStyle(
    color: Color(0xFF064060),
    fontSize: 24,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w300,
  );
  // Regular ------------------------------------
  static const TextStyle regular10 = TextStyle(
    color: Color(0xFF064060),
    fontSize: 10,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static const TextStyle regular12 = TextStyle(
    color: AppColors.grey,
    fontSize: 12,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static const TextStyle regular14 = TextStyle(
    color: Color(0xFF064060),
    fontSize: 14,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );
  static const TextStyle regular16 = TextStyle(
    color: Color(0xFF064060),
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w400,
  );

  // Medium ------------------------------------
  static const TextStyle medium12 = TextStyle(
    color: Color(0xFF064060),
    fontSize: 12,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
  static const TextStyle medium14 = TextStyle(
    color: Color(0xFF064060),
    fontSize: 14,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );
  static const TextStyle styleMedium16 = TextStyle(
    color: Color(0xFF064060),
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w500,
  );

  // Semi-bold
  static const TextStyle semiBold12 = TextStyle(
    color: Color(0xFF064060),
    fontSize: 12,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle semiBold14 = TextStyle(
    color: Color(0xFF064060),
    fontSize: 14,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle semiBold16 = TextStyle(
    color: Colors.white,
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle semiBold18 = TextStyle(
    color: Color(0xFF064060),
    fontSize: 18,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );
  static const TextStyle semiBold68 = TextStyle(
    color: Color(0xFF064060),
    fontSize: 68,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w600,
  );

  // Bold ------------------------------------
  static const TextStyle bold14 = TextStyle(
    color: Color(0xFF4EB7F2),
    fontSize: 14,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
    height: 0,
  );
  static const TextStyle bold16 = TextStyle(
    color: Color(0xFF4EB7F2),
    fontSize: 16,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
    height: 0,
  );
  static const TextStyle bold18 = TextStyle(
    color: Color(0xFF4EB7F2),
    fontSize: 18,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
    height: 0,
  );
  static const TextStyle bold24 = TextStyle(
    color: Colors.black,
    fontSize: 24,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
    height: 0,
  );
  static const TextStyle bold32 = TextStyle(
    color: AppColors.main,
    fontSize: 32,
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.w700,
    height: 0,
  );
}
