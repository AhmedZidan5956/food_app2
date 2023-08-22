import 'package:flutter/material.dart';
import 'package:food_app/core/resources/manager_assets.dart';
import 'package:food_app/core/resources/manager_colors.dart';
import '../../../../resources/manager_font_sizes.dart';
import '../../../../resources/manager_font_weight.dart';
import '../../../../resources/manager_height.dart';
import '../../../../resources/manager_strings.dart';
import '../../../../resources/manager_width.dart';
import '../../../../route/routes.dart';
import '../../../../widgets/base_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  late TextEditingController _userNameTextEditingController;
  late TextEditingController _passwordTextEditingController;

  @override
  void initState() {
    super.initState();
    _userNameTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _userNameTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
        margin:  EdgeInsets.symmetric(
          horizontal: ManagerWidth.w24,
        ),
        child:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
             SizedBox(height: ManagerHeight.h24, ),
            Image.asset(
              ManagerAssets.splash3,
              width: ManagerWidth.w120,
              height: ManagerHeight.h120,
            ),
             SizedBox(height: ManagerHeight.h50, ),
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
              controller: _userNameTextEditingController,
              cursorColor: ManagerColors.primaryColor,
              keyboardType: TextInputType.name,
              decoration: InputDecoration(
                labelText: ManagerStrings.userName,
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
              ),
            ),
             SizedBox(
              height: ManagerHeight.h24,
            ),
            TextField(
              controller: _passwordTextEditingController,
              cursorColor: ManagerColors.primaryColor,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
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
             SizedBox(height: ManagerHeight.h50, ),
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
                  onTap: (){
                    Navigator.pushReplacementNamed(context, Routes.registerView,);
                  },
                  child:  Text(
                      ManagerStrings.signUp,
                      style: const TextStyle(
                        color: ManagerColors.primaryColor,
                        fontSize: ManagerFontSizes.s16,
                      ),
                ),

                ),
              ],
            ),
             SizedBox(height: ManagerHeight.h56, ),
            BaseButton(
              onPressed: () {
                Navigator.pushNamed(context, Routes.homeView);
              },
              title: ManagerStrings.login,
              textStyle: TextStyle(
                color: ManagerColors.white,
                fontSize: ManagerFontSizes.s16,
                fontWeight: ManagerFontWeight.regular,
              ),
              spacerFlex: 4,
            ),
             SizedBox(height: ManagerHeight.h40, ),
            Text(
              ManagerStrings.or,
              style: TextStyle(
                fontSize: ManagerFontSizes.s16,
                color: ManagerColors.secondaryColor,
              ),
            ),
             SizedBox(height: ManagerHeight.h40, ),
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
               SizedBox(height: ManagerHeight.h10,),
          ],
        ),
        ),),
    );
  }
}
