import 'package:flutter/material.dart';
import 'package:food_app/core/features/auth/presentation/controller/auth_controller.dart';
import 'package:food_app/core/resources/manager_assets.dart';
import 'package:food_app/core/resources/manager_colors.dart';
import 'package:get/get.dart';
import '../../../../resources/manager_font_sizes.dart';
import '../../../../resources/manager_font_weight.dart';
import '../../../../resources/manager_height.dart';
import '../../../../resources/manager_strings.dart';
import '../../../../resources/manager_text_styles.dart';
import '../../../../resources/manager_width.dart';
import '../../../../route/routes.dart';
import '../../../../widgets/base_button.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder: (controller) {
      return Scaffold(
        // resizeToAvoidBottomInset : false,
        appBar: AppBar(
          backgroundColor: ManagerColors.transparent,
          elevation: 0,
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          alignment: AlignmentDirectional.centerStart,
          margin: EdgeInsets.symmetric(
            horizontal: ManagerWidth.w24,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(
                  height: ManagerHeight.h24,
                ),
                Image.asset(
                  ManagerAssets.splash3,
                  width: ManagerWidth.w120,
                  height: ManagerHeight.h120,
                ),
                SizedBox(
                  height: ManagerHeight.h50,
                ),
                Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: Text(
                    ManagerStrings.signIn.toUpperCase(),
                    style: TextStyle(
                      color: ManagerColors.black,
                      fontSize: ManagerFontSizes.s30,
                      fontWeight: ManagerFontWeight.regular,
                    ),
                  ),
                ),
                TextField(
                  controller: controller.emailTextEditingController,
                  cursorColor: ManagerColors.primaryColor,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: ManagerStrings.email,
                    labelStyle: TextStyle(
                      fontSize: ManagerFontSizes.s16,
                      fontWeight: ManagerFontWeight.w600,
                      color: ManagerColors.secondaryColor.withOpacity(0.9),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: ManagerColors.secondaryColor,
                      ),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: ManagerColors.primaryColor,
                      ),
                    ),
                    errorText: controller.emailError,
                    errorBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: ManagerColors.error),
                    ),
                  ),
                ),
                SizedBox(
                  height: ManagerHeight.h24,
                ),
                TextField(
                  controller: controller.passwordTextEditingController,
                  cursorColor: ManagerColors.primaryColor,
                  keyboardType: TextInputType.visiblePassword,
                  obscureText: controller.showPassword,
                  decoration: InputDecoration(
                    suffixIcon: IconButton(
                      onPressed: () => controller.changePasswordVisibility(),
                      icon: controller.showPassword ? const Icon(
                          Icons.visibility_off) : const Icon(
                        Icons.visibility, color: ManagerColors.primaryColor,
                      ),
                    ),
                    labelText: ManagerStrings.password,
                    labelStyle: TextStyle(
                      fontSize: ManagerFontSizes.s16,
                      fontWeight: ManagerFontWeight.w600,
                      color: ManagerColors.secondaryColor.withOpacity(0.9),
                    ),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: ManagerColors.secondaryColor,
                      ),
                    ),
                    focusedBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(
                        color: ManagerColors.primaryColor,
                      ),
                    ),
                    errorText: controller.passwordError,
                    errorBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: ManagerColors.error),
                    ),
                  ),
                ),
                SizedBox(
                  height: ManagerHeight.h16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          width: ManagerWidth.w10,
                          height: ManagerHeight.h10,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: ManagerColors.primaryColor,
                            ),
                          ),
                        ),
                        SizedBox(
                          width: ManagerWidth.w6,
                        ),
                        Text(
                          ManagerStrings.rememberMe,
                          style: TextStyle(
                            color: ManagerColors.black,
                            fontSize: ManagerFontSizes.s14,
                          ),
                        ),
                      ],
                    ),
                    Text(
                      ManagerStrings.forgotYourPassword,
                      style: const TextStyle(
                        color: ManagerColors.primaryColor,
                        fontSize: ManagerFontSizes.s14,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ManagerHeight.h50,
                ),
                Row(
                  children: [
                    Text(
                      ManagerStrings.donNotHaveAnAccount,
                      style: TextStyle(
                        color: ManagerColors.black,
                        fontSize: ManagerFontSizes.s16,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.pushReplacementNamed(
                          context,
                          Routes.registerView,
                        );
                      },
                      child: Text(
                        ManagerStrings.signUp,
                        style: const TextStyle(
                          color: ManagerColors.primaryColor,
                          fontSize: ManagerFontSizes.s16,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: ManagerHeight.h56,
                ),
                BaseButton(
                  onPressed: () {
                    controller.perFormLogin(context);
                  },
                  title: ManagerStrings.login,
                  textStyle: TextStyle(
                    color: ManagerColors.white,
                    fontSize: ManagerFontSizes.s16,
                    fontWeight: ManagerFontWeight.regular,
                  ),
                  spacerFlex: 4,
                ),
                SizedBox(
                  height: ManagerHeight.h24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: divider(endIndent: ManagerWidth.w16),
                    ),
                    Text(
                      ManagerStrings.or.toUpperCase(),
                      style: getRegularTextStyle(
                        color: ManagerColors.secondaryColor,
                        fontSize: ManagerFontSizes.s16,
                      ),
                    ),
                    Expanded(
                      child: divider(indent: ManagerWidth.w16),
                    ),
                  ],
                ),
                SizedBox(
                  height: ManagerHeight.h24,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      ManagerAssets.facebook,
                      width: ManagerWidth.w60,
                      height: ManagerHeight.h60,
                    ),
                    Image.asset(
                      ManagerAssets.google,
                      width: ManagerWidth.w60,
                      height: ManagerHeight.h60,
                    ),
                    Image.asset(
                      ManagerAssets.twitter,
                      width: ManagerWidth.w60,
                      height: ManagerHeight.h60,
                    ),
                  ],
                ),
                SizedBox(
                  height: ManagerHeight.h10,
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  Divider divider({
    double endIndent = 0,
    double indent = 0,
  }) {
    return Divider(
      color: ManagerColors.secondaryColor,
      thickness: 0.7,
      endIndent: endIndent,
      indent: indent,
    );
  }
}
