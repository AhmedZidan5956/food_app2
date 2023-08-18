import 'package:flutter/material.dart';
import 'package:food_app/core/resources/manager_assets.dart';
import 'package:food_app/core/resources/manager_colors.dart';
import 'package:food_app/core/resources/manager_font_sizes.dart';
import 'package:food_app/core/resources/manager_font_weight.dart';
import 'package:food_app/core/resources/manager_height.dart';
import 'package:food_app/core/resources/manager_strings.dart';
import 'package:food_app/core/resources/manager_width.dart';
import 'package:food_app/core/widgets/base_button.dart';

class AuthenticationView extends StatefulWidget {
  const AuthenticationView({super.key});

  @override
  State<AuthenticationView> createState() => _AuthenticationViewState();
}

class _AuthenticationViewState extends State<AuthenticationView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              ManagerAssets.auth1,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            width: double.infinity,
            height: double.infinity,
            color: ManagerColors.secondaryColor.withOpacity(0.8),
          ),
          Container(
              width: double.infinity,
              height: double.infinity,
              margin: const EdgeInsets.symmetric(
                horizontal: ManagerWidth.w50,
              ),
              child: Column(
                children: [
                  const Spacer(flex: 3,),
                  Image.asset(
                    ManagerAssets.logo1,
                    width: ManagerWidth.w120,
                    height: ManagerHeight.h120,
                  ),
                  const Spacer(flex: 1,),
                  Text(
                    ManagerStrings.welcomeTo,
                    style: TextStyle(
                      color: ManagerColors.white,
                      fontSize: ManagerFontSizes.s24,
                      fontWeight: ManagerFontWeight.w600,
                    ),
                  ),
                  Text(
                    ManagerStrings.appName,
                    style: TextStyle(
                      color: ManagerColors.white,
                      fontSize: ManagerFontSizes.s30,
                      fontWeight: ManagerFontWeight.bold,
                    ),
                  ),
                  const Spacer(flex: 3,),
                  Column(
                    children: [
                      BaseButton(onPressed: (){},
                        title: ManagerStrings.signUp,
                        textStyle: TextStyle(
                          color: ManagerColors.white,
                          fontSize: ManagerFontSizes.s16,
                          fontWeight: ManagerFontWeight.regular,
                        ),
                        spacerFlex: 4,
                      ),
                      const SizedBox( height: ManagerHeight.h22,),
                      BaseButton(onPressed: (){},
                        title: ManagerStrings.signIn,
                        textStyle: const TextStyle(
                          color: ManagerColors.primaryColor,
                          fontSize: ManagerFontSizes.s16,
                          fontWeight: ManagerFontWeight.regular,
                        ),
                        bgColor: ManagerColors.white,
                        spacerFlex: 4,
                      ),
                      const SizedBox( height: ManagerHeight.h22,),
                      BaseButton(onPressed: (){},
                        title: ManagerStrings.visitor,
                        textStyle:  TextStyle(
                          color: ManagerColors.white,
                          fontSize: ManagerFontSizes.s16,
                          fontWeight: ManagerFontWeight.regular,
                        ),
                        bgColor: ManagerColors.white.withOpacity(0.5),
                        spacerFlex: 4,
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              ),),
        ],
      ),
    );
  }
}
