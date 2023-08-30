import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../core/features/auth/presentation/controller/auth_controller.dart';
import '../core/features/splash/presentation/controller/splash_controller.dart';
import '../core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';

initModule() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppSettingsSharedPreferences().initPreferences();
}


initSplash(){
  Get.put<SplashController>(SplashController(),);

}
disposeSplash(){
  Get.delete<SplashController>();

}
initAuth(){
  disposeSplash();
  Get.put<AuthController>(AuthController(),);

}
disposeAuth(){
  Get.delete<AuthController>();

}

initHome() {
  disposeSplash();
  disposeAuth();

}

disposeHome() {}
