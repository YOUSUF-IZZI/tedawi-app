import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tedawi/core/helper/spaces.dart';
import 'package:tedawi/core/utils/colors.dart';
import 'package:tedawi/core/utils/styles.dart';
import 'package:tedawi/features/login/ui/widgets/already_have_account.dart';
import 'package:tedawi/features/login/ui/widgets/login_form.dart';
import 'package:tedawi/features/login/ui/widgets/terms_conditions_text.dart';

// login screen
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                heightSpace(50),
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    'Welcome Back',
                    style: AppStyles.bold24,
                    //textAlign: TextAlign.start,
                  ),
                ),
                heightSpace(8),
                Text(
                  'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                  style:
                      AppStyles.regular14.copyWith(color: AppColors.lightBlack),
                ),
                heightSpace(36),
                const LoginForm(),
                heightSpace(46),
                // Terms & conditions and privacy policy RichText widget
                const TermsAndConditionsText(),
                heightSpace(20),
                const AleradyHaveAccountText(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
