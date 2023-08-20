import 'package:flutter/material.dart';
import 'package:food_app/core/resources/manager_colors.dart';
import '../../../../resources/manager_font_sizes.dart';
import '../../../../resources/manager_font_weight.dart';
import '../../../../resources/manager_height.dart';
import '../../../../resources/manager_strings.dart';
import '../../../../resources/manager_width.dart';
import '../../../../route/routes.dart';
import '../../../../widgets/base_button.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  late TextEditingController _userNameTextEditingController;
  late TextEditingController _emailTextEditingController;
  late TextEditingController _passwordTextEditingController;
  late TextEditingController _confirmPasswordTextEditingController;
  late TextEditingController _phoneTextEditingController;


  @override
  void initState() {
    super.initState();
    _emailTextEditingController = TextEditingController();
    _passwordTextEditingController = TextEditingController();
    _confirmPasswordTextEditingController = TextEditingController();
    _userNameTextEditingController = TextEditingController();
    _phoneTextEditingController = TextEditingController();
  }

  @override
  void dispose() {
    _emailTextEditingController.dispose();
    _passwordTextEditingController.dispose();
    _confirmPasswordTextEditingController.dispose();
    _userNameTextEditingController.dispose();
    _phoneTextEditingController.dispose();
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
            const Spacer(flex: 2,),
            TextField(
              controller: _userNameTextEditingController,
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
              ),
            ),
            const SizedBox(
              height: ManagerHeight.h14,
            ),
            TextField(
              controller: _emailTextEditingController,
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
              ),
            ),
            const SizedBox(
              height: ManagerHeight.h14,
            ),
            TextField(
              controller: _phoneTextEditingController,
              cursorColor: ManagerColors.primaryColor,
              keyboardType: TextInputType.phone,
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
              ),
            ),
            const SizedBox(
              height: ManagerHeight.h14,
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
              ),
            ),
            const SizedBox(
              height: ManagerHeight.h14,
            ),
            TextField(
              controller: _confirmPasswordTextEditingController,
              cursorColor: ManagerColors.primaryColor,
              keyboardType: TextInputType.visiblePassword,
              decoration: InputDecoration(
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
              ),
            ),

            const Spacer(
              flex: 3,
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
                  onTap: (){
                    Navigator.pushReplacementNamed(context, Routes.loginView,);
                  },
                  child:const Text(
                    ManagerStrings.signIn,
                    style: TextStyle(
                      color: ManagerColors.primaryColor,
                      fontSize: ManagerFontSizes.s16,
                    ),
                  ) ,
                ),

              ],
            ),
            const Spacer(
              flex: 3,
            ),
            BaseButton(
              onPressed: () {},
              title: ManagerStrings.register,
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
          ],
        ),
      ),
    );
  }
}
