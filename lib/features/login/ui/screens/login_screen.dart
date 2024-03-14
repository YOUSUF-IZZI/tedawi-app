import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tedawi/core/helper/extensions.dart';
import 'package:tedawi/core/helper/spaces.dart';
import 'package:tedawi/core/utils/colors.dart';
import 'package:tedawi/core/utils/styles.dart';
import 'package:tedawi/core/widgets/app_material_button.dart';
import 'package:tedawi/features/home/ui/screens/home_screen.dart';
import 'package:tedawi/features/login/logic/login/login_cubit.dart';
import 'package:tedawi/features/login/ui/widgets/already_have_account.dart';
import 'package:tedawi/features/login/ui/widgets/login_form.dart';
import 'package:tedawi/features/login/ui/widgets/terms_conditions_text.dart';

// login screen
class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<LoginCubit, LoginState>(
      listener: (context, state) {
        if (state is LoginFailure) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(state.errMessage),
              backgroundColor: AppColors.main,
            ),
          );
        } else if (state is LoginSuccess) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Login Success'),
              backgroundColor: Colors.green,
            ),
          );
          context.pushAndRemoveUntil(const HomeScreen());
        }
      },
      builder: (context, state) {
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
                      ),
                    ),
                    heightSpace(8),
                    Text(
                      'We\'re excited to have you back, can\'t wait to see what you\'ve been up to since you last logged in.',
                      style: AppStyles.regular14
                          .copyWith(color: AppColors.lightBlack),
                    ),
                    heightSpace(36),
                    const LoginForm(),
                    heightSpace(32),
                    state is LoginLoading
                        ? const Center(child: CircularProgressIndicator())
                        : AppMaterialButton(
                            onPressed: () {
                              if (context.read<LoginCubit>().loginFormKey.currentState!.validate()) {
                                context.read<LoginCubit>().signIn();
                              }
                            },
                            child: Text(
                              'Login',
                              style: AppStyles.bold16
                                  .copyWith(color: Colors.white),
                            ),
                          ),
                    heightSpace(46),
                    const TermsAndConditionsText(),
                    heightSpace(20),
                    const AleradyHaveAccountText(),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
