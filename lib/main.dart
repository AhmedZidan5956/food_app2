import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_app/config/locale/locale_settings.dart';
import 'package:food_app/core/resources/manager_assets.dart';
import 'package:food_app/core/resources/manager_colors.dart';
import 'package:food_app/core/widgets/constants.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'config/dependancy_injection.dart';
import 'core/route/routes.dart';
import 'package:easy_localization/easy_localization.dart';


main() async {
  await initModule();
  runApp(
    EasyLocalization(
      supportedLocales: localeSettings.locales,
      path: ManagerPaths.translationsPath,
      startLocale: localeSettings.defaultLocale,
      fallbackLocale: localeSettings.defaultLocale,
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      splitScreenMode: true,
      designSize: const Size(
        Constants.designDeviceWidth,
        Constants.designDeviceHeight,
      ),
      builder: (context, child) {
        return GetMaterialApp(
          localizationsDelegates: context.localizationDelegates,
          supportedLocales: context.supportedLocales,
          locale: context.locale,
          theme: ThemeData(
            useMaterial3: true,
            primaryColor: ManagerColors.white,
          ),
          debugShowCheckedModeBanner: false,
          initialRoute: Routes.splashScreen,
          onGenerateRoute: RouteGenerator.getRoute,
        );
      },
    );
  }
}
