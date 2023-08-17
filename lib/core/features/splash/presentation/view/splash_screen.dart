import 'package:flutter/material.dart';
import 'package:food_app/core/resources/manager_height.dart';
import '../../../../constants.dart';
import '../../../../resources/manager_assets.dart';
import '../../../../resources/manager_font_sizes.dart';
import '../../../../resources/manager_strings.dart';
import '../../../../routes.dart';

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
      () => Navigator.pushReplacementNamed(context, Routes.outBoardingScreen),
    );
  }

  @override
  Widget build(BuildContext context) {

    return Directionality(
      textDirection: TextDirection.ltr,
      child: Scaffold(
        body: Stack(
          children: [
            Align(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    ManagerAssets.splash3,
                  ),
                  const SizedBox(height: ManagerHeight.h12),
                  const Text(
                    ManagerStrings.appName,
                    style: TextStyle(
                      fontSize: ManagerFontSizes.s20,
                      fontWeight: FontWeight.w400
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
