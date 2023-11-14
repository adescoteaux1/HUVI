import 'package:alexandra_descoteaux_s_application2/core/app_export.dart';
import 'package:alexandra_descoteaux_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class UvStatusVonePage extends StatelessWidget {
  const UvStatusVonePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray50,
            body: Container(
                width: 395.h,
                decoration: AppDecoration.fillGray50,
                child: Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 19.h, vertical: 8.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgArrowleft,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(left: 2.h),
                              onTap: () {
                                onTapImgArrowleftone(context);
                              }),
                          Padding(
                              padding: EdgeInsets.only(left: 61.h, top: 4.v),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgSun,
                                    height: 49.adaptSize,
                                    width: 49.adaptSize),
                                Padding(
                                    padding:
                                        EdgeInsets.only(left: 11.h, top: 10.v),
                                    child: Text("73°F Sunny",
                                        style: CustomTextStyles
                                            .headlineLargeBlack90001))
                              ])),
                          Align(
                              alignment: Alignment.center,
                              child: Container(
                                  margin: EdgeInsets.only(
                                      left: 67.h, top: 9.v, right: 60.h),
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 40.h, vertical: 36.v),
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(
                                              ImageConstant.imgGroup4),
                                          fit: BoxFit.cover)),
                                  child: Container(
                                      margin: EdgeInsets.only(
                                          left: 1.h, bottom: 7.v),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 47.h, vertical: 22.v),
                                      decoration: AppDecoration.gradientYellowToYellow.copyWith(
                                          borderRadius: BorderRadiusStyle
                                              .roundedBorder74),
                                      child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment: CrossAxisAlignment.end,
                                          children: [
                                            SizedBox(height: 7.v),
                                            Text("7",
                                                style: CustomTextStyles
                                                    .interBlack90001)
                                          ])))),
                          Container(
                              height: 110.v,
                              width: 354.h,
                              margin: EdgeInsets.only(left: 2.h, top: 9.v),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topLeft,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(left: 94.h),
                                            child: Text("UV LEVEL",
                                                style: CustomTextStyles
                                                    .headlineLargeYellow900))),
                                    CustomImageView(
                                        imagePath: ImageConstant.imgImage7,
                                        height: 74.v,
                                        width: 354.h,
                                        alignment: Alignment.bottomCenter)
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 19.h, top: 16.v, right: 66.h),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgClock,
                                        height: 40.adaptSize,
                                        width: 40.adaptSize,
                                        margin: EdgeInsets.only(bottom: 9.v)),
                                    Expanded(
                                        child: Container(
                                            width: 216.h,
                                            margin: EdgeInsets.only(
                                                left: 14.h, top: 3.v),
                                            child: Text(
                                                "You have 30 minutes left of safe sun time!",
                                                maxLines: 2,
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.center,
                                                style: CustomTextStyles
                                                    .titleMediumBluegray600
                                                    .copyWith(height: 1.44))))
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(left: 51.h, top: 17.v),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgLocationmarker,
                                    height: 36.adaptSize,
                                    width: 36.adaptSize,
                                    margin: EdgeInsets.only(
                                        top: 36.v, bottom: 5.v)),
                                Container(
                                    width: 164.h,
                                    margin: EdgeInsets.only(left: 5.h),
                                    child: Text(
                                        "      12:00 PM\n      Boston, MA",
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .headlineLargeBlack90001))
                              ])),
                          CustomElevatedButton(
                              text: "See Recommendations",
                              margin: EdgeInsets.fromLTRB(6.h, 20.v, 16.h, 8.v),
                              buttonStyle: CustomButtonStyles.outlineBlack,
                              alignment: Alignment.center)
                        ])))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }
}
