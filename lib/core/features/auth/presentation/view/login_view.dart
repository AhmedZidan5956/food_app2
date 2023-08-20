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
      appBar: AppBar(
        backgroundColor: ManagerColors.transparent,
        elevation: 0,
      ),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        alignment: AlignmentDirectional.centerStart,
        margin: const EdgeInsets.symmetric(
          horizontal: ManagerWidth.w50,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Spacer(
              flex: 3,
            ),
            Image.asset(
              ManagerAssets.splash3,
              width: ManagerWidth.w120,
              height: ManagerHeight.h120,
            ),
            const Spacer(
              flex: 3,
            ),
            Align(
              alignment: AlignmentDirectional.centerStart,
              child: Text(
                ManagerStrings.signIn.toUpperCase(),
                style: TextStyle(
                  color: ManagerColors.black,
                  fontSize: ManagerFontSizes.s30,
                  fontWeight: ManagerFontWeight.w600,
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
            const SizedBox(
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
            const SizedBox(
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
                    const SizedBox(
                      width: ManagerWidth.w6,
                    ),
                    Text(
                      ManagerStrings.rememberMe,
                      style: TextStyle(
                        color: ManagerColors.black,
                        fontSize: ManagerFontSizes.s16,
                      ),
                    ),
                  ],
                ),
                const Text(
                  ManagerStrings.forgotYourPassword,
                  style: TextStyle(
                    color: ManagerColors.primaryColor,
                    fontSize: ManagerFontSizes.s16,
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 3,
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
                  onTap: (){
                    Navigator.pushReplacementNamed(context, Routes.registerView,);
                  },
                  child: const Text(
                      ManagerStrings.signUp,
                      style: TextStyle(
                        color: ManagerColors.primaryColor,
                        fontSize: ManagerFontSizes.s16,
                      ),
                ),

                ),
              ],
            ),
            const Spacer(
              flex: 3,
            ),
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
            const Spacer(
              flex: 3,
            ),
            Text(
              ManagerStrings.or,
              style: TextStyle(
                fontSize: ManagerFontSizes.s16,
                color: ManagerColors.secondaryColor,
              ),
            ),
            const Spacer(
              flex: 2,
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
            const Spacer(
              flex: 3,
            ),

          ],
        ),
      ),
    );
  }
}
