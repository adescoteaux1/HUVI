import 'bloc/profile_vone_bloc.dart';
import 'models/profile_vone_model.dart';
import 'package:alexandra_descoteaux_s_application2/core/app_export.dart';
import 'package:alexandra_descoteaux_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:alexandra_descoteaux_s_application2/widgets/app_bar/appbar_image_1.dart';
import 'package:alexandra_descoteaux_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:alexandra_descoteaux_s_application2/widgets/custom_elevated_button.dart';
import 'package:alexandra_descoteaux_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class ProfileVoneScreen extends StatelessWidget {
  const ProfileVoneScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileVoneBloc>(
      create: (context) => ProfileVoneBloc(ProfileVoneState(
        profileVoneModelObj: ProfileVoneModel(),
      ))
        ..add(ProfileVoneInitialEvent()),
      child: ProfileVoneScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: 395.h,
          child: Column(
            children: [
              SizedBox(
                height: 186.v,
                width: 395.h,
                child: Stack(
                  alignment: Alignment.bottomLeft,
                  children: [
                    Align(
                      alignment: Alignment.topCenter,
                      child: Container(
                        height: 158.v,
                        width: 395.h,
                        decoration: AppDecoration.fillYellow,
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            CustomAppBar(
                              leadingWidth: 44.h,
                              leading: AppbarImage(
                                svgPath: ImageConstant.imgArrowright,
                                margin: EdgeInsets.only(left: 20.h),
                              ),
                              actions: [
                                AppbarImage1(
                                  svgPath: ImageConstant.imgDotshorizontal,
                                  margin: EdgeInsets.only(
                                    left: 40.h,
                                    right: 40.h,
                                    bottom: 4.v,
                                  ),
                                ),
                              ],
                            ),
                            CustomImageView(
                              imagePath:
                                  ImageConstant.imgHuvilogo1removebgpreview,
                              height: 118.v,
                              width: 111.h,
                              alignment: Alignment.topLeft,
                              margin: EdgeInsets.only(
                                left: 134.h,
                                top: 7.v,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    CustomElevatedButton(
                      width: 335.h,
                      text: "lbl_edit_profile".tr,
                      margin: EdgeInsets.only(left: 18.h),
                      leftIcon: Container(
                        margin: EdgeInsets.only(right: 17.h),
                        child: CustomImageView(
                          svgPath: ImageConstant.imgEdit,
                        ),
                      ),
                      buttonStyle: CustomButtonStyles.outlineBlack,
                      buttonTextStyle: CustomTextStyles.titleMediumGray50,
                      alignment: Alignment.bottomLeft,
                    ),
                  ],
                ),
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: SizedBox(
                        height: 186.v,
                        width: 346.h,
                        child: Stack(
                          alignment: Alignment.bottomLeft,
                          children: [
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 75.v),
                                child: Text(
                                  "lbl_age_32".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomLeft,
                              child: Padding(
                                padding: EdgeInsets.only(bottom: 51.v),
                                child: Text(
                                  "lbl_eye_color_blue".tr,
                                  style: theme.textTheme.bodyLarge,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: SizedBox(
                                height: 186.v,
                                width: 346.h,
                                child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: SizedBox(
                                        width: 346.h,
                                        child: Text(
                                          "msg_skin_details_burns".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: theme.textTheme.bodyLarge!
                                              .copyWith(
                                            height: 1.50,
                                          ),
                                        ),
                                      ),
                                    ),
                                    Align(
                                      alignment: Alignment.topLeft,
                                      child: Padding(
                                        padding: EdgeInsets.only(top: 11.v),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.min,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Padding(
                                              padding:
                                                  EdgeInsets.only(left: 1.h),
                                              child: Text(
                                                "lbl_jennifer".tr,
                                                style: CustomTextStyles
                                                    .headlineLargeYellow900Bold,
                                              ),
                                            ),
                                            SizedBox(height: 14.v),
                                            Text(
                                              "lbl_fair_skin".tr,
                                              style: theme.textTheme.bodyLarge,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgProfilepicjennifer,
                                      height: 144.v,
                                      width: 142.h,
                                      alignment: Alignment.topRight,
                                      margin: EdgeInsets.only(right: 15.h),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(height: 36.v),
                    CustomImageView(
                      svgPath: ImageConstant.imgDivider,
                      height: 1.v,
                      width: 344.h,
                      alignment: Alignment.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 16.v,
                        right: 49.h,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_stats".tr,
                                  style: theme.textTheme.headlineSmall,
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 7.h,
                                    top: 6.v,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "lbl_total_sun_time".tr,
                                          style: theme.textTheme.titleMedium,
                                        ),
                                        TextSpan(
                                          text: "lbl".tr,
                                          style: theme.textTheme.bodyLarge,
                                        ),
                                        TextSpan(
                                          text: "lbl_54_hr_20m".tr,
                                          style: theme.textTheme.bodyLarge,
                                        ),
                                        TextSpan(
                                          text: " ",
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 7.h,
                                    top: 9.v,
                                  ),
                                  child: RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "msg_daily_average_sun2".tr,
                                          style: theme.textTheme.titleMedium,
                                        ),
                                        TextSpan(
                                          text: "lbl_24m".tr,
                                          style: theme.textTheme.bodyLarge,
                                        ),
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(
                                    left: 7.h,
                                    top: 5.v,
                                  ),
                                  child: Row(
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 3.v),
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "msg_huvi_protection2".tr,
                                                style:
                                                    theme.textTheme.titleMedium,
                                              ),
                                              TextSpan(
                                                text: "lbl_b".tr,
                                                style:
                                                    theme.textTheme.bodyLarge,
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                      CustomImageView(
                                        svgPath:
                                            ImageConstant.imgQuestionmarkcircle,
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        margin: EdgeInsets.only(left: 5.h),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 63.adaptSize,
                            width: 63.adaptSize,
                            margin: EdgeInsets.only(
                              left: 16.h,
                              top: 3.v,
                              bottom: 48.v,
                            ),
                            decoration: BoxDecoration(
                              color: appTheme.yellow700,
                              borderRadius: BorderRadius.circular(
                                31.h,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    BlocSelector<ProfileVoneBloc, ProfileVoneState,
                        TextEditingController?>(
                      selector: (state) => state.buttononeController,
                      builder: (context, buttononeController) {
                        return CustomTextFormField(
                          width: 200.h,
                          controller: buttononeController,
                          margin: EdgeInsets.only(
                            left: 16.h,
                            top: 15.v,
                          ),
                          hintText: "lbl_view_analytics".tr,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                            margin: EdgeInsets.fromLTRB(19.h, 3.v, 5.h, 2.v),
                            child: CustomImageView(
                              svgPath: ImageConstant.imgChartBar,
                            ),
                          ),
                          prefixConstraints: BoxConstraints(
                            maxHeight: 29.v,
                          ),
                          contentPadding: EdgeInsets.only(
                            top: 6.v,
                            right: 30.h,
                            bottom: 6.v,
                          ),
                          borderDecoration:
                              TextFormFieldStyleHelper.outlineBlack,
                          fillColor: theme.colorScheme.primary,
                        );
                      },
                    ),
                    SizedBox(height: 13.v),
                    CustomImageView(
                      svgPath: ImageConstant.imgDivider,
                      height: 1.v,
                      width: 344.h,
                      alignment: Alignment.center,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 15.h,
                        top: 12.v,
                        right: 40.h,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: EdgeInsets.only(bottom: 18.v),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "lbl_achievements".tr,
                                    style: CustomTextStyles.titleLargeYellow900,
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 5.h,
                                      top: 17.v,
                                      right: 1.h,
                                    ),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 4.v,
                                          width: 79.h,
                                          decoration: BoxDecoration(
                                            color: appTheme.indigo100,
                                            borderRadius: BorderRadius.circular(
                                              2.h,
                                            ),
                                          ),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              2.h,
                                            ),
                                            child: LinearProgressIndicator(
                                              value: 0.65,
                                              backgroundColor:
                                                  appTheme.indigo100,
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                appTheme.yellow900,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 4.v,
                                          width: 47.h,
                                          margin: EdgeInsets.only(left: 8.h),
                                          decoration: BoxDecoration(
                                            color: appTheme.indigo100,
                                            borderRadius: BorderRadius.circular(
                                              2.h,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 4.v,
                                          width: 47.h,
                                          margin: EdgeInsets.only(left: 8.h),
                                          decoration: BoxDecoration(
                                            color: appTheme.indigo100,
                                            borderRadius: BorderRadius.circular(
                                              2.h,
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 4.v,
                                          width: 47.h,
                                          margin: EdgeInsets.only(left: 7.h),
                                          decoration: BoxDecoration(
                                            color: appTheme.indigo100,
                                            borderRadius: BorderRadius.circular(
                                              2.h,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    margin: EdgeInsets.only(
                                      top: 18.v,
                                      right: 5.h,
                                    ),
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 5.h),
                                    child: Row(
                                      children: [
                                        Container(
                                          height: 4.v,
                                          width: 65.h,
                                          decoration: BoxDecoration(
                                            color: appTheme.yellow900,
                                            borderRadius: BorderRadius.circular(
                                              2.h,
                                            ),
                                          ),
                                          child: ClipRRect(
                                            borderRadius: BorderRadius.circular(
                                              2.h,
                                            ),
                                            child: LinearProgressIndicator(
                                              value: 0.98,
                                              backgroundColor:
                                                  appTheme.yellow900,
                                              valueColor:
                                                  AlwaysStoppedAnimation<Color>(
                                                appTheme.indigo100,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          height: 4.v,
                                          width: 79.h,
                                          margin: EdgeInsets.only(left: 8.h),
                                          decoration: BoxDecoration(
                                            color: appTheme.indigo100,
                                            borderRadius: BorderRadius.circular(
                                              2.h,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 6.h,
                                      top: 17.v,
                                    ),
                                    child: Row(
                                      children: [
                                        SizedBox(
                                          height: 4.v,
                                          width: 79.h,
                                          child: Stack(
                                            alignment: Alignment.center,
                                            children: [
                                              Align(
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                  width: 79.h,
                                                  child: Divider(
                                                    color: appTheme.indigo100,
                                                  ),
                                                ),
                                              ),
                                              Align(
                                                alignment: Alignment.center,
                                                child: SizedBox(
                                                  width: 79.h,
                                                  child: Divider(
                                                    color: appTheme.yellow900,
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(left: 8.h),
                                          child: Container(
                                            height: 4.v,
                                            width: 37.h,
                                            decoration: BoxDecoration(
                                              color: appTheme.yellow900,
                                              borderRadius:
                                                  BorderRadius.circular(
                                                2.h,
                                              ),
                                            ),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(
                                                2.h,
                                              ),
                                              child: LinearProgressIndicator(
                                                value: 0.98,
                                                backgroundColor:
                                                    appTheme.yellow900,
                                                valueColor:
                                                    AlwaysStoppedAnimation<
                                                        Color>(
                                                  appTheme.indigo100,
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 60.h,
                                          child: Divider(
                                            color: appTheme.indigo100,
                                            indent: 8.h,
                                          ),
                                        ),
                                        SizedBox(
                                          width: 60.h,
                                          child: Divider(
                                            color: appTheme.indigo100,
                                            indent: 8.h,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(
                              left: 24.h,
                              top: 21.v,
                            ),
                            padding: EdgeInsets.all(8.h),
                            decoration: AppDecoration.outlineBlueGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder10,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgSun,
                                  height: 49.adaptSize,
                                  width: 49.adaptSize,
                                ),
                                SizedBox(height: 6.v),
                                Text(
                                  "lbl_gold".tr,
                                  style:
                                      CustomTextStyles.labelLargeInterWhiteA700,
                                ),
                                SizedBox(height: 1.v),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    CustomElevatedButton(
                      height: 29.v,
                      width: 200.h,
                      text: "lbl_view_more".tr,
                      margin: EdgeInsets.only(left: 22.h),
                      buttonStyle: CustomButtonStyles.outlineBlackTL14,
                    ),
                    Spacer(),
                    CustomImageView(
                      imagePath: ImageConstant.imgProfilepicjennifer1x395,
                      height: 1.v,
                      width: 395.h,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
