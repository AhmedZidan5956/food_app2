import 'package:flutter/material.dart';
import 'package:food_app/core/resources/manager_colors.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'core/route/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData(
          useMaterial3: true,
        primaryColor: ManagerColors.white,
      ),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.splashScreen,
      onGenerateRoute: RouteGenerator.getRoute,
    );
  }
}