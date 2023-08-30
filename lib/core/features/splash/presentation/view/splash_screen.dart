import 'package:flutter/material.dart';
import 'package:food_app/core/resources/manager_height.dart';
import '../../../../resources/manager_assets.dart';
import '../../../../resources/manager_font_sizes.dart';
import '../../../../resources/manager_strings.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

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
