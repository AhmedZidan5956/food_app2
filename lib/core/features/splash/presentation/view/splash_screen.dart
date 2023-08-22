import 'package:flutter/material.dart';
import 'package:food_app/core/resources/manager_height.dart';
import 'package:get/get.dart';
import '../../../../storage/local/database/shared_preferences/app_settings_shared_preferences.dart';
import '../../../../widgets/constants.dart';
import '../../../../resources/manager_assets.dart';
import '../../../../resources/manager_font_sizes.dart';
import '../../../../resources/manager_strings.dart';
import '../../../../route/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(
       const Duration(
        seconds: Constants.splashTime,
      ),
          () => AppSettingsSharedPreferences().outBoardingViewed
          ? Get.offAllNamed(Routes.authenticationView)
          : Get.offAllNamed(Routes.outBoardingScreen),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Directionality(
      textDirection: TextDirection.rtl,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(
          children: [
            Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    ManagerAssets.splash3,
                  ),
                   SizedBox(height: ManagerHeight.h12),
                   Text(
                    ManagerStrings.appName,
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
        backgroundColor: Colors.white,
      ),
    );
  }
}
