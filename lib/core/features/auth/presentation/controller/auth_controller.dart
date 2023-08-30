import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_app/core/features/auth/data/data_source/auth_api_controller.dart';
import 'package:food_app/core/resources/manager_colors.dart';
import 'package:food_app/core/route/routes.dart';
import 'package:food_app/extension/extensions.dart';
import 'package:get/get.dart';

import '../../../../widgets/helpers.dart';

class AuthController extends GetxController with Helpers {
  late TextEditingController userNameTextEditingController;
  late TextEditingController passwordTextEditingController;
  late TextEditingController emailTextEditingController;
  late TextEditingController confirmPasswordTextEditingController;
  late TextEditingController phoneTextEditingController;
  AuthApiController apiController = AuthApiController();
  String? emailError;
  String? passwordError;
  String? confirmPasswordError;
  String? nameError;
  String? phoneError;
  bool showPassword = true;
  bool showConfirmPassword = true;

  changePasswordVisibility(){
    showPassword = !showPassword;
    update();
  }

  changeConfirmPasswordVisibility(){
    showConfirmPassword = !showConfirmPassword;
    update();
  }

  @override
  void onInit() {
    super.onInit();
    userNameTextEditingController = TextEditingController();
    passwordTextEditingController = TextEditingController();
    emailTextEditingController = TextEditingController();
    confirmPasswordTextEditingController = TextEditingController();
    phoneTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    userNameTextEditingController.dispose();
    passwordTextEditingController.dispose();
    emailTextEditingController.dispose();
    confirmPasswordTextEditingController.dispose();
    phoneTextEditingController.dispose();
    super.dispose();
  }

  resetErrors() {
    emailError = null;
    passwordError = null;
    confirmPasswordError = null;
    nameError = null;
    phoneError = null;
  }

  perFormLogin(BuildContext context) async {
    if (checkData(context)) {
      showDialog(
          context: context,
          builder: (context) {
            return Center(
              child: CircularProgressIndicator(
                color: ManagerColors.primaryColor,
                backgroundColor: ManagerColors.white,
              ),
            );
          });

      if (await apiController.login(
        email: emailTextEditingController.text.toString(),
        password: passwordTextEditingController.text.toString(),
        context: context,
      )) {
        showSnackBar(context: context, message: 'Login Successfully');
        Get.back();
        Get.offAllNamed(Routes.homeView);
      }
      Get.back();
    }
    update();
  }

  perFormRegister(BuildContext context) async {
    resetErrors();
    if (checkRegisterData(context)) {
      showDialog(
          context: context,
          builder: (context) {
            return Center(
              child: CircularProgressIndicator(
                color: ManagerColors.primaryColor,
                backgroundColor: ManagerColors.white,
              ),
            );
          });

      if (await apiController.register(
        email: emailTextEditingController.text.toString(),
        password: passwordTextEditingController.text.toString(),
        context: context,
        name: userNameTextEditingController.text.toString(),
        confirmPassword: confirmPasswordTextEditingController.text.toString(),
        phone: phoneTextEditingController.text.toString(),
      )) {
        showSnackBar(context: context, message: 'Register Successfully');
        Get.back();
        Get.offAllNamed(Routes.loginView);
      }
      Get.back();
    }
    update();
  }

  bool checkName(BuildContext context) {
    if (userNameTextEditingController.text.isEmpty) {
      nameError = 'Username is required';
      showSnackBar(
        context: context,
        message: nameError.onNull(),
        error: true,
      );
      return false;
    }
    return true;
  }

  bool checkPhone(BuildContext context) {
    if (passwordTextEditingController.text.isEmpty) {
      phoneError = 'Phone is required';
      showSnackBar(
        context: context,
        message: phoneError.onNull(),
        error: true,
      );
      return false;
    }
    return true;
  }

  bool checkEmail(BuildContext context) {
    if (emailTextEditingController.text.isEmpty) {
      emailError = 'Email is required';
      showSnackBar(
        context: context,
        message: emailError.onNull(),
        error: true,
      );
      return false;
    }
    return true;
  }

  bool checkPassword(BuildContext context) {
    if (passwordTextEditingController.text.isEmpty) {
      passwordError = 'Password is required';
      showSnackBar(
        context: context,
        message: passwordError.onNull(),
        error: true,
      );
      return false;
    }
    if (passwordTextEditingController.text.length < 6) {
      showSnackBar(
        context: context,
        message: 'Password must be at least 6 character',
        error: true,
      );
      return false;
    }
    return true;
  }

  bool checkConfirmPassword(BuildContext context) {
    if (passwordTextEditingController.text !=
        confirmPasswordTextEditingController.text) {
      passwordError = 'Password is not matched';
      confirmPasswordError = passwordError;
      showSnackBar(
        context: context,
        message: passwordError.onNull(),
        error: true,
      );
      return false;
    }
    return true;
  }

  bool checkData(BuildContext context) {
    if (!checkEmail(context)) {
      return false;
    }

    if (!checkPassword(context)) {
      return false;
    }
    return true;
  }

  bool checkRegisterData(BuildContext context) {
    if (!checkName(context)) {
      return false;
    }
    if (!checkEmail(context)) {
      return false;
    }
    if (!checkPhone(context)) {
      return false;
    }
    if (!checkPassword(context)) {
      return false;
    }
    if (!checkConfirmPassword(context)) {
      return false;
    }

    return true;
  }
}
