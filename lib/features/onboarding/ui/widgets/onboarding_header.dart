import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tedawi/core/utils/assets.dart';
import 'package:tedawi/core/utils/styles.dart';

class OnboardingHeader extends StatelessWidget {
  const OnboardingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(AppAssets.logo),
          const SizedBox(
            width: 8,
          ),
          Text(
            'Tedawi',
            style: AppStyles.bold24,
          )
        ],
      ),
    );
  }
}
