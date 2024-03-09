import 'package:flutter/material.dart';
import 'package:tedawi/core/utils/styles.dart';
import 'package:tedawi/features/onboarding/ui/widgets/doctor_image.dart';
import 'package:tedawi/features/onboarding/ui/widgets/get_started_button.dart';
import 'package:tedawi/features/onboarding/ui/widgets/onboarding_header.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    OnboardingHeader(),
                    SizedBox(height: 40),
                    DoctorImage(),
                  ],
                ),
              ),
            ),
            //SizedBox(height: 18),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                style: AppStyles.regular12,
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
            const GetStartedButton(),
            const SizedBox(height: 44),
          ],
        ),
      ),
    );
  }
}
