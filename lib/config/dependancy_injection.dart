import 'package:flutter/material.dart';
import '../core/storage/local/database/shared_preferences/app_settings_shared_preferences.dart';

initModule() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppSettingsSharedPreferences().initPreferences();
}
