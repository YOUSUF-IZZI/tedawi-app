import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tedawi/core/helper/extensions.dart';
import 'package:tedawi/core/routing/router_paths.dart';
import 'package:tedawi/core/utils/colors.dart';
import 'package:tedawi/core/utils/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 32.w),
      child: MaterialButton(
        onPressed: () {
          context.pushNamed(RouterPaths.login);
        },
        color: AppColors.main,
        minWidth: double.infinity,
        height: 52.h,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        child: Text(
          'Get Started',
          style: AppStyles.semiBold16,
        ),
      ),
    );
  }
}
