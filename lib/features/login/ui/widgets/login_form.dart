import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tedawi/core/helper/spaces.dart';
import 'package:tedawi/core/utils/colors.dart';
import 'package:tedawi/core/utils/styles.dart';
import 'package:tedawi/core/widgets/app_text_form_field.dart';
import 'package:tedawi/features/login/logic/login/login_cubit.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().loginFormKey,
      child: Column(
        children: [
          AppTextFormField(
            hintText: 'Email',
            controller: context.read<LoginCubit>().emailController,
            validator: (value) {
              if (value == '' || value.isEmpty) {
                return 'Email is required';
              }
            },
          ),
          heightSpace(16),
          AppTextFormField(
            hintText: 'Password',
            isPassword: true,
            controller: context.read<LoginCubit>().passwordController,
            validator: (value) {
              if (value == '' || value.isEmpty) {
                return 'Password is required';
              }
            },
          ),
          heightSpace(16),
          Align(
            alignment: AlignmentDirectional.centerEnd,
            child: Text(
              'Forgot Password?',
              style: AppStyles.regular12.copyWith(color: AppColors.main),
            ),
          ),
          // heightSpace(32),
          // AppMaterialButton(
          //   onPressed: () {
          //     context.read<LoginCubit>().signIn();
          //   },
          //   child: Text(
          //     'Login',
          //     style: AppStyles.bold16.copyWith(color: Colors.white),
          //   ),
          // ),
        ],
      ),
    );
  }
}
