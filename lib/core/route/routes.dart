import 'package:flutter/material.dart';
import 'package:food_app/core/resources/manager_assets.dart';
import '../../config/dependancy_injection.dart';
import '../features/auth/presentation/view/authentication_view.dart';
import '../features/auth/presentation/view/login_view.dart';
import '../features/auth/presentation/view/register_view.dart';
import '../features/home/presentation/view/home_view.dart';
import '../features/out_boarding/presentation/view/out_boarding_screen.dart';
import '../features/splash/presentation/view/splash_screen.dart';
import '../resources/manager_font_sizes.dart';
import '../resources/manager_height.dart';
import '../resources/manager_strings.dart';

class Routes {
  static const String splashScreen = '/splash_screen';
  static const String outBoardingScreen = '/out_boarding_screen';
  static const String authenticationView = '/authenticationView';
  static const String loginView = '/loginView';
  static const String registerView = '/registerView';
  static const String homeView = '/HomeView';
}

class RouteGenerator {
  static Route <dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        initSplash();
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.outBoardingScreen:
        return MaterialPageRoute(builder: (_) => const OutBoardingScreen());
      case Routes.authenticationView:
        initAuth();
        return MaterialPageRoute(builder: (_) => const AuthenticationView());
      case Routes.loginView:
        return MaterialPageRoute(builder: (_) => const LoginView());
      case Routes.registerView:
        return MaterialPageRoute(builder: (_) => const RegisterView());
      case Routes.homeView:
        initHome();
        return MaterialPageRoute(builder: (_) => const HomeView());
      default:
        return unDefineRoute();
    }
  }

  static Route<dynamic> unDefineRoute() {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        appBar: AppBar(),
        body: Stack(
          children: [
            Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    ManagerAssets.unDefineRoute,
                  ),
                   SizedBox(height: ManagerHeight.h14),
                  Text(
                    ManagerStrings.notFoundRoute,
                    style: const TextStyle(
                      fontSize: ManagerFontSizes.s20,
                      fontWeight: FontWeight.w700,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
