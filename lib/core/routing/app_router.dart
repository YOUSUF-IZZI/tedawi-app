import 'package:flutter/material.dart';
import 'package:tedawi/core/routing/router_paths.dart';
import 'package:tedawi/features/login/ui/screens/login_screen.dart';
import 'package:tedawi/features/onboarding/ui/screens/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterPaths.onboarding:
        return MaterialPageRoute(
            builder: (context) => const OnboardingScreen());
      case RouterPaths.login:
        return MaterialPageRoute(builder: (context) => const LoginScreen());
      default:
        return MaterialPageRoute(
          builder: (context) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  }
}


// Application Router class
