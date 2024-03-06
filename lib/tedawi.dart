import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tedawi/core/routing/app_router.dart';
import 'package:tedawi/core/routing/router_paths.dart';

class TedawiApp extends StatelessWidget {
  const TedawiApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    //Iphone 15 pro max width: 430.0
    //Iphone 15 pro max height: 932.0
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Responsive',
          onGenerateRoute: AppRouter().generateRoute,
          initialRoute: RouterPaths.onboarding,
        );
      },
    );
  }
}
