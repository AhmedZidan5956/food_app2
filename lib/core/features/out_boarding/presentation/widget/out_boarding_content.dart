import 'package:flutter/material.dart';
import 'package:food_app/extension/extensions.dart';
import '../../../../resources/manager_assets.dart';
import '../../../../resources/manager_colors.dart';
import '../../../../resources/manager_font_sizes.dart';
import '../../../../resources/manager_font_weight.dart';
import '../../../../resources/manager_height.dart';
import '../../../../resources/manager_strings.dart';

class OutBoardingContent extends StatelessWidget {
  final String image;
  String? title = ManagerStrings.outBoardingTitle1 ;
  String? subTitle = ManagerStrings.outBoardingSubTitle1 ;

   OutBoardingContent({
    super.key,
    this.image = ManagerAssets.outBoarding1,
    this.title ,
    this.subTitle ,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: ManagerHeight.h500,
      child: Column(
        children: [

          Image.asset(
            image,
            height: ManagerHeight.h220,
          ),
           SizedBox(
            height: ManagerHeight.h90,
          ),
          Text(
            title.onNull(),
            style: TextStyle(
              fontSize: ManagerFontSizes.s26,
              fontWeight: ManagerFontWeight.bold,
              color: ManagerColors.outBoardingTitleColor,
            ),
          ),
           SizedBox(
            height: ManagerHeight.h40,
          ),
          SizedBox(
            height: ManagerHeight.h100,
            child: Text(
              subTitle.onNull(),
              style: TextStyle(
                fontSize: ManagerFontSizes.s18,
                fontWeight: ManagerFontWeight.regular,
                color: ManagerColors.outBoardingTitleColor,
              ),
              textAlign: TextAlign.center,
            ),
          ),
           SizedBox(
            height: ManagerHeight.h40,
          ),
        ],
      ),
    );
  }
}
