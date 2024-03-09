import 'package:flutter/material.dart';
import 'package:tedawi/core/utils/colors.dart';

// Material button

class AppMaterialButton extends StatelessWidget {
  const AppMaterialButton(
      {super.key,
      this.borderRadius,
      this.backgroundColor,
      this.horizontalPadding,
      this.verticalPadding,
      this.minWidth,
      this.height,
      required this.child,
      this.textStyle,
      required this.onPressed});

  final double? borderRadius;
  final Color? backgroundColor;
  final double? horizontalPadding;
  final double? verticalPadding;
  final double? minWidth;
  final double? height;
  final Widget child;
  final TextStyle? textStyle;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      minWidth: minWidth ?? double.infinity,
      height: height ?? 48,
      color: backgroundColor ?? AppColors.main,
      padding: EdgeInsets.symmetric(
          horizontal: horizontalPadding ?? 12, vertical: verticalPadding ?? 14),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(borderRadius ?? 16),
      ),
      child: child,
    );
  }
}
