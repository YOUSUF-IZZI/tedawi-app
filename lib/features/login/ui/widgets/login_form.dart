import 'package:flutter/material.dart';
import 'package:tedawi/core/helper/spaces.dart';
import 'package:tedawi/core/utils/colors.dart';
import 'package:tedawi/core/utils/styles.dart';
import 'package:tedawi/core/widgets/app_material_button.dart';
import 'package:tedawi/core/widgets/app_text_form_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      //key: null,
      child: Column(
        children: [
          const AppTextFormField(
            hintText: 'Email',
          ),
          heightSpace(16),
          const AppTextFormField(
            hintText: 'Password',
            isPassword: true,
          ),
          heightSpace(16),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              'Forgot Password?',
              style: AppStyles.regular12.copyWith(color: AppColors.main),
            ),
          ),
          heightSpace(32),
          AppMaterialButton(
            onPressed: () {},
            child: Text(
              'Login',
              style: AppStyles.bold16.copyWith(color: Colors.white),
            ),
          ),
        ],
      ),
    );
  }
}
