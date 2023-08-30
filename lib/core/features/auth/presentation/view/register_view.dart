import 'package:flutter/material.dart';
import 'package:food_app/core/features/auth/presentation/controller/auth_controller.dart';
import 'package:food_app/core/resources/manager_colors.dart';
import 'package:get/get.dart';
import '../../../../resources/manager_font_sizes.dart';
import '../../../../resources/manager_font_weight.dart';
import '../../../../resources/manager_height.dart';
import '../../../../resources/manager_strings.dart';
import '../../../../resources/manager_width.dart';
import '../../../../route/routes.dart';
import '../../../../widgets/base_button.dart';

class RegisterView extends StatelessWidget {
  const RegisterView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<AuthController>(builder: (controller) {
      return Scaffold(
        appBar: AppBar(
          backgroundColor: ManagerColors.transparent,
          elevation: 0,
        ),
        body: Container(
          alignment: AlignmentDirectional.centerStart,
          margin: EdgeInsets.symmetric(
            horizontal: ManagerWidth.w24,
          ),
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
              SizedBox(
              height: ManagerHeight.h30,
            ),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                ManagerStrings.signUp.toUpperCase(),
                style: TextStyle(
                  color: ManagerColors.black,
                  fontSize: ManagerFontSizes.s30,
                  fontWeight: ManagerFontWeight.w600,
                ),
              ),
            ),
            SizedBox(
              height: ManagerHeight.h30,
            ),
            TextField(
              controller: controller.userNameTextEditingController,
              cursorColor: ManagerColors.primaryColor,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: ManagerStrings.userName,
                labelStyle: TextStyle(
                  fontSize: ManagerFontSizes.s16,
                  fontWeight: ManagerFontWeight.w600,
                  color: ManagerColors.secondaryColor.withOpacity(0.5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ManagerColors.secondaryColor.withOpacity(0.5),
                  ),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ManagerColors.primaryColor,
                  ),
                ),
                errorText: controller.nameError,
                errorBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: ManagerColors.error),
                ),
              ),
            ),
            SizedBox(
              height: ManagerHeight.h16,
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
                  color: ManagerColors.secondaryColor.withOpacity(0.5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ManagerColors.secondaryColor.withOpacity(0.5),
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
              height: ManagerHeight.h16,
            ),
            TextField(
              controller: controller.phoneTextEditingController,
              cursorColor: ManagerColors.primaryColor,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: ManagerStrings.phone,
                labelStyle: TextStyle(
                  fontSize: ManagerFontSizes.s16,
                  fontWeight: ManagerFontWeight.w600,
                  color: ManagerColors.secondaryColor.withOpacity(0.5),
                ),
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ManagerColors.secondaryColor.withOpacity(0.5),
                  ),
                ),
                focusedBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(
                    color: ManagerColors.primaryColor,
                  ),
                ),
                errorText: controller.phoneError,
                errorBorder: const UnderlineInputBorder(
                  borderSide: BorderSide(color: ManagerColors.error),
                ),
              ),
            ),
            SizedBox(
              height: ManagerHeight.h16,
            ),
            TextField(
              controller: controller.passwordTextEditingController,
              obscureText: controller.showPassword,
              cursorColor: ManagerColors.primaryColor,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration(
                labelText: ManagerStrings.password,
                labelStyle: TextStyle(
                  fontSize: ManagerFontSizes.s16,
                  fontWeight: ManagerFontWeight.w600,
                  color: ManagerColors.secondaryColor.withOpacity(0.5),
                ),
                suffixIcon: IconButton(
                  onPressed: () => controller.changePasswordVisibility(),
                  icon: controller.showPassword ? const Icon(
                      Icons.visibility_off) : const Icon(
                    Icons.visibility, color: ManagerColors.primaryColor,
                  ),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: ManagerColors.secondaryColor.withOpacity(0.5),
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
          TextField(
            controller: controller.confirmPasswordTextEditingController,
            cursorColor: ManagerColors.primaryColor,
            keyboardType: TextInputType.emailAddress,
            obscureText: controller.showConfirmPassword,
            decoration: InputDecoration(
              suffixIcon: IconButton(
                onPressed: () => controller.changeConfirmPasswordVisibility(),
                icon: controller.showConfirmPassword ? const Icon(
                    Icons.visibility_off) : const Icon(
                  Icons.visibility, color: ManagerColors.primaryColor,
                ),
              ),
              labelText: ManagerStrings.confirmPassword,
              labelStyle: TextStyle(
                fontSize: ManagerFontSizes.s16,
                fontWeight: ManagerFontWeight.w600,
                color: ManagerColors.secondaryColor.withOpacity(0.5),
              ),
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: ManagerColors.secondaryColor.withOpacity(0.5),
                ),
              ),
              focusedBorder: const UnderlineInputBorder(
                borderSide: BorderSide(
                  color: ManagerColors.primaryColor,
                ),
              ),
              errorText: controller.confirmPasswordError,
              errorBorder: const UnderlineInputBorder(
                borderSide: BorderSide(color: ManagerColors.error),
              ),
            ),
          ),
          SizedBox(
            height: ManagerHeight.h40,
          ),
          Row(
            children: [
              Text(
                ManagerStrings.alreadyHaveAccount,
                style: TextStyle(
                  color: ManagerColors.black,
                  fontSize: ManagerFontSizes.s16,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.pushReplacementNamed(
                    context,
                    Routes.loginView,
                  );
                },
                child: Text(
                  ManagerStrings.signIn,
                  style: const TextStyle(
                    color: ManagerColors.primaryColor,
                    fontSize: ManagerFontSizes.s16,
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            height: ManagerHeight.h80,
          ),
          BaseButton(
            onPressed: () {
              controller.perFormRegister(context);
            },
            title: ManagerStrings.register,
            textStyle: TextStyle(
              color: ManagerColors.white,
              fontSize: ManagerFontSizes.s16,
              fontWeight: ManagerFontWeight.regular,
            ),
            spacerFlex: 4,
          ),
          SizedBox(
            height: ManagerHeight.h10,
          ),
          ],
        ),
      ),)
      ,
      );
    });
  }
}
