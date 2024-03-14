import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:tedawi/core/networking/api/dio_services.dart';
import 'package:tedawi/core/routing/router_paths.dart';
import 'package:tedawi/features/home/ui/screens/home_screen.dart';
import 'package:tedawi/features/login/data/repo/login_repository.dart';
import 'package:tedawi/features/login/logic/login/login_cubit.dart';
import 'package:tedawi/features/login/ui/screens/login_screen.dart';
import 'package:tedawi/features/onboarding/ui/screens/onboarding_screen.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case RouterPaths.onboarding:
        return MaterialPageRoute(
          builder: (context) => const OnboardingScreen(),
        );
      case RouterPaths.login:
        return MaterialPageRoute(
          builder: (context) => BlocProvider(
            create: (context) => LoginCubit(
              LoginRepository(DioServices(Dio())),
            ),
            child: const LoginScreen(),
          ),
        );
      case RouterPaths.home:
        return MaterialPageRoute(
          builder: (context) => const HomeScreen(),
        );
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