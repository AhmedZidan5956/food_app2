import 'package:get/get.dart';
import '../../../../route/routes.dart';
import '../../../../storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import '../../../../widgets/constants.dart';

class SplashController extends GetxController {
  AppSettingsSharedPreferences appSettingsSharedPreferences =
      AppSettingsSharedPreferences();

  @override
  void onInit() {
    super.onInit();
    // appSettingsSharedPreferences.clear;
    Future.delayed(
        const Duration(
          seconds: Constants.splashTime,
        ), () {
      String route = appSettingsSharedPreferences.loggedIn
          ? Routes.homeView
          : appSettingsSharedPreferences.outBoardingViewed
              ? Routes.homeView
              : Routes.outBoardingScreen;
      Get.offAllNamed(route);
    });
  }
}
