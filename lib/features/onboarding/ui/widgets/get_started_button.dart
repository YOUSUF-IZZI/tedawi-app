import 'package:flutter/material.dart';
import 'package:tedawi/core/helper/extensions.dart';
import 'package:tedawi/core/routing/router_paths.dart';
import 'package:tedawi/core/utils/colors.dart';
import 'package:tedawi/core/utils/styles.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: MaterialButton(
        onPressed: () {
          context.pushNamed(RouterPaths.login);
        },
        color: AppColors.main,
        minWidth: double.infinity,
        height: 52,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        //padding: const EdgeInsets.symmetric(vertical: 15),
        child: const Text(
          'Get Started',
          style: AppStyles.semiBold16,
        ),
      ),
    );
  }
}
