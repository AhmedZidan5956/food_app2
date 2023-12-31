import 'package:flutter/material.dart';
import 'package:food_app/extension/extensions.dart';
import 'constants.dart';
import '../resources/manager_colors.dart';
import '../resources/manager_font_sizes.dart';
import '../resources/manager_font_weight.dart';
import '../resources/manager_height.dart';
import '../resources/manager_strings.dart';
import '../resources/manager_width.dart';

// ignore: must_be_immutable
class BaseButton extends StatelessWidget {
  final int? spacerFlex;
  String? title = ManagerStrings.start;
  final bool isVisibleIcon;
  final double? width;
  final double? height;
  final Color bgColor;
  final double elevation;
  void Function() onPressed;

  TextStyle? textStyle = TextStyle(
    fontSize: ManagerFontSizes.s16,
    fontWeight: ManagerFontWeight.regular,
    color: ManagerColors.white,
  );

  BaseButton({
    super.key,
    this.title,
    this.isVisibleIcon = false,
    this.width,
    this.height ,
    this.bgColor = ManagerColors.primaryColor,
    this.textStyle,
    this.spacerFlex,
    this.elevation = 2,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        elevation: elevation,
        backgroundColor: bgColor,
        minimumSize: Size(
          width?? ManagerWidth.w64,
          height?? ManagerHeight.h50,
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
           Spacer(
            flex:spacerFlex ?? Constants.baseButtonFirstSpacerFlex,
          ),
          Text(
            title.onNull(),
            style: textStyle,
          ),
           Spacer(
            flex: spacerFlex ?? Constants.baseButtonSecondSpacerFlex,
          ),
          Visibility(
            visible: isVisibleIcon,
            child: Icon(
              Icons.arrow_forward,
              color: ManagerColors.white,
            ),
          )
        ],
      ),
    );
  }
}
