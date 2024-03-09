import 'package:flutter/material.dart';
import 'package:tedawi/core/utils/colors.dart';
import 'package:tedawi/core/utils/styles.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'By logging, you agree to our ',
        style: AppStyles.regular12.copyWith(color: AppColors.lightBlack),
        children: <TextSpan>[
          TextSpan(
            text: 'Terms & Conditions',
            style: AppStyles.regular12.copyWith(
              color: AppColors.main,
              decoration: TextDecoration.underline,
            ),
          ),
          TextSpan(
            text: ' and ',
            style: AppStyles.regular12.copyWith(
              color: AppColors.lightBlack,
            ),
          ),
          TextSpan(
            text: 'Privacy Policy',
            style: AppStyles.regular12.copyWith(
              color: AppColors.main,
              decoration: TextDecoration.underline,
              height: 1.5,
            ),
          ),
        ],
      ),
    );
  }
}
