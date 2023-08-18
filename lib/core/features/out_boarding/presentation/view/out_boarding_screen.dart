import 'package:flutter/material.dart';
import '../../../../constants.dart';
import '../../../../resources/manager_assets.dart';
import '../../../../resources/manager_colors.dart';
import '../../../../resources/manager_font_sizes.dart';
import '../../../../resources/manager_font_weight.dart';
import '../../../../resources/manager_height.dart';
import '../../../../resources/manager_strings.dart';
import '../../../../resources/manager_width.dart';
import '../../../../routes.dart';
import '../../../../widgets/base_button.dart';
import '../widget/out_boarding_content.dart';
import '../widget/progress_indicator.dart';

class OutBoardingScreen extends StatefulWidget {
  const OutBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OutBoardingScreen> createState() => _OutBoardingScreenState();
}

class _OutBoardingScreenState extends State<OutBoardingScreen> {
  late PageController _pageController;
  int _currentPageIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Visibility(
          visible: isNotFirstPage(),
          child: IconButton(
            onPressed: () {
              _pageController.previousPage(
                duration: const Duration(
                  milliseconds: Constants.pageViewSliderDuration,
                ),
                curve: Curves.fastLinearToSlowEaseIn,
              );
            },
            icon: const Icon(
              Icons.arrow_back_ios_new,
            ),
          ),
        ),
        backgroundColor: ManagerColors.transparent,
        elevation: Constants.appBarElevation,
        actions: [
          Container(
            width: ManagerWidth.w100,
            height: ManagerHeight.h40,
            margin: const EdgeInsetsDirectional.only(
              end: ManagerWidth.w12,
            ),
            child: Visibility(
              visible: isNotLastPage(),
              replacement: BaseButton(
                width: ManagerWidth.w10,
                height: ManagerHeight.h10,
                title: ManagerStrings.start,
                textStyle: const TextStyle(
                  color: ManagerColors.primaryColor,
                  fontSize: ManagerFontSizes.s16,
                ),
                isVisibleIcon: false,
                bgColor: ManagerColors.transparent,
                elevation: Constants.elevationZero,
                onPressed: () {},
              ),
              child: BaseButton(
                width: ManagerWidth.w10,
                height: ManagerHeight.h10,
                title: ManagerStrings.next,
                textStyle: const TextStyle(
                  color: ManagerColors.primaryColor,
                  fontSize: ManagerFontSizes.s16,
                ),
                isVisibleIcon: false,
                bgColor: ManagerColors.transparent,
                elevation: Constants.elevationZero,
                onPressed: () {
                  _pageController.nextPage(
                    duration: const Duration(
                      milliseconds: Constants.pageViewSliderDuration,
                    ),
                    curve: Curves.easeIn,
                  );
                },
              ),
            ),
          ),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: ManagerWidth.w30,
          vertical: ManagerHeight.h34,
        ),
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Expanded(
              child: PageView(
                scrollDirection: Axis.horizontal,
                controller: _pageController,
                onPageChanged: (int value) {
                  setState(() {
                    _currentPageIndex = value;
                  });
                },
                children: const [
                  OutBoardingContent(
                    image: ManagerAssets.outBoarding1,
                    title: ManagerStrings.outBoardingTitle1,
                    subTitle: ManagerStrings.outBoardingSubTitle1,
                  ),
                  OutBoardingContent(
                    image: ManagerAssets.outBoarding2,
                    title: ManagerStrings.outBoardingTitle2,
                    subTitle: ManagerStrings.outBoardingSubTitle2,
                  ),
                  OutBoardingContent(
                    image: ManagerAssets.outBoarding3,
                    title: ManagerStrings.outBoardingTitle3,
                    subTitle: ManagerStrings.outBoardingSubTitle3,
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                progressIndicator(
                  color: isFirstPage()
                      ? ManagerColors.primaryColor
                      : ManagerColors.progressIndicatorColor,
                  width: isFirstPage() ? ManagerWidth.w20 : ManagerWidth.w8,
                ),
                progressIndicator(
                  color: isSecondPage()
                      ? ManagerColors.primaryColor
                      : ManagerColors.progressIndicatorColor,
                  width: isSecondPage() ? ManagerWidth.w20 : ManagerWidth.w8,
                ),
                progressIndicator(
                  color: isLastPage()
                      ? ManagerColors.primaryColor
                      : ManagerColors.progressIndicatorColor,
                  width: isLastPage() ? ManagerWidth.w20 : ManagerWidth.w8,
                ),
              ],
            ),
            const SizedBox(height: ManagerHeight.h40),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: ManagerWidth.w40,
              ),
              child: Visibility(
                visible: isLastPage(),
                replacement: BaseButton(
                  isVisibleIcon: true,
                  textStyle: TextStyle(
                    fontSize: ManagerFontSizes.s16,
                    fontWeight: ManagerFontWeight.regular,
                    color: ManagerColors.white,
                  ),
                  onPressed: () {
                    _pageController.animateToPage(
                      Constants.outBoardingLastPage,
                      duration: const Duration(milliseconds: 100),
                      curve: Curves.fastLinearToSlowEaseIn,
                    );
                  },
                  title: ManagerStrings.skip,
                ),

                child: BaseButton(
                  isVisibleIcon: true,
                  textStyle: TextStyle(
                    fontSize: ManagerFontSizes.s16,
                    fontWeight: ManagerFontWeight.regular,
                    color: ManagerColors.white,
                  ),
                  onPressed: () {
                    Navigator.pushReplacementNamed(
                        context, Routes.authenticationView);
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  bool isNotFirstPage() {
    return _currentPageIndex != 0;
  }

  bool isFirstPage() {
    return _currentPageIndex == 0;
  }

  bool isSecondPage() {
    return _currentPageIndex == 1;
  }

  bool isThirdPage() {
    return _currentPageIndex == 2;
  }

  bool isLastPage() {
    return _currentPageIndex == Constants.outBoardingLastPage;
  }

  bool isNotLastPage() {
    return _currentPageIndex != Constants.outBoardingLastPage;
  }
}
