import 'package:flutter/material.dart';
import '../../../../resources/manager_colors.dart';
import '../../../../resources/manager_height.dart';
import '../../../../resources/manager_raduis.dart';
import '../../../../resources/manager_width.dart';

Container progressIndicator({
  Color color = ManagerColors.progressIndicatorColor,
  double? width,
}) {
  return Container(
    width: width,
    height: ManagerHeight.h8,
    margin:  EdgeInsetsDirectional.only(
      end: ManagerWidth.w12,
    ),
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(
        ManagerRadius.r8,
      ),
    ),
  );
}
