import 'package:flutter/material.dart';
import 'package:tedawi/core/utils/styles.dart';
import 'package:tedawi/features/onboarding/ui/widgets/doctor_image.dart';
import 'package:tedawi/features/onboarding/ui/widgets/get_started_button.dart';
import 'package:tedawi/features/onboarding/ui/widgets/onboarding_header.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Expanded(
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
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Manage and schedule all of your medical appointments easily with Docdoc to get a new experience.',
                style: AppStyles.regular12,
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 30),
            GetStartedButton(),
            SizedBox(height: 44),
          ],
        ),
      ),
    );
  }
}


// This is onboarding_screen.dart
// Path: lib/features/onboarding/ui/screens/onboarding_screen.dart
// Contains from 3 widgets