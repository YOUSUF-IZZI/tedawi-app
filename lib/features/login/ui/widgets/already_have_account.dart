import 'package:flutter/material.dart';
import 'package:tedawi/core/utils/colors.dart';
import 'package:tedawi/core/utils/styles.dart';

class AleradyHaveAccountText extends StatelessWidget {
  const AleradyHaveAccountText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        text: 'Aleready have an account?',
        style: AppStyles.regular12.copyWith(color: AppColors.lightBlack),
        children: <TextSpan>[
          TextSpan(
            text: 'Sign Up',
            style: AppStyles.regular12.copyWith(
              color: AppColors.main,
              decoration: TextDecoration.underline,
            ),
          ),
        ],
      ),
    );
  }
}
