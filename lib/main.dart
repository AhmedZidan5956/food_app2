import 'package:flutter/material.dart';
import 'package:food_app/core/features/auth/presentation/view/authentication_view.dart';

import 'core/features/out_boarding/presentation/view/out_boarding_screen.dart';
import 'core/features/splash/presentation/view/splash_screen.dart';
import 'core/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          useMaterial3: true
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashScreen,
      routes: {
        Routes.splashScreen: (context) => const SplashScreen(),
        Routes.outBoardingScreen: (context) => const OutBoardingScreen(),
        Routes.authenticationView: (context) => const AuthenticationView(),
      },
    );
  }
}