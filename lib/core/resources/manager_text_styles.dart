import 'package:flutter/material.dart';
import 'manager_colors.dart';
import 'manager_font_sizes.dart';
import 'manager_font_weight.dart';
import 'manager_fonts.dart';

TextStyle _getTextStyle({
  required double fontSize,
  String? fontFamily,
  required FontWeight fontWeight,
  Color? color,
  TextDecoration? textDecoration,
  FontStyle? fontStyle,
}) {
  return TextStyle(
    fontSize: fontSize,
    fontFamily: fontFamily = ManagerFontFamily.appFont,
    fontWeight: fontWeight,
    color: color ?? ManagerColors.primaryTextColor,
    decoration: textDecoration ?? TextDecoration.none,
    fontStyle: fontStyle,
  );
}

// Regular text style
TextStyle getRegularTextStyle({
  double? fontSize,
  Color? color,
  TextDecoration? textDecoration,
  FontStyle? fontStyle,
}) {
  return _getTextStyle(
    fontSize: fontSize ?? ManagerFontSizes.s14,
    fontWeight: ManagerFontWeight.regular,
    color: color,
    textDecoration: textDecoration,
    fontStyle: fontStyle,
  );
}

// Bold text style
TextStyle getBoldTextStyle({
  double? fontSize,
  Color? color,
  TextDecoration? textDecoration,
}) {
  return _getTextStyle(
    fontSize: fontSize ?? ManagerFontSizes.s18,
    fontWeight: ManagerFontWeight.bold,
    color: color,
    textDecoration: textDecoration,
  );
}

// Medium text style
TextStyle getMediumTextStyle({
  double? fontSize,
  Color? color,
  TextDecoration? textDecoration,
}) {
  return _getTextStyle(
    fontSize: fontSize ?? ManagerFontSizes.s14,
    fontWeight: ManagerFontWeight.medium,
    color: color,
    textDecoration: textDecoration,
  );
}

// Italic text style
TextStyle getItalicTextStyle({
  double? fontSize,
  Color? color,
  TextDecoration? textDecoration,
}) {
  return getRegularTextStyle(
    fontStyle: FontStyle.italic,
  );
}
