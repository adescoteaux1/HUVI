import 'bloc/recommendation_vone_bloc.dart';
import 'models/recommendation_vone_model.dart';
import 'package:alexandra_descoteaux_s_application2/core/app_export.dart';
import 'package:alexandra_descoteaux_s_application2/presentation/uv_status_vone_page/uv_status_vone_page.dart';
import 'package:alexandra_descoteaux_s_application2/widgets/app_bar/appbar_image.dart';
import 'package:alexandra_descoteaux_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:alexandra_descoteaux_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:alexandra_descoteaux_s_application2/widgets/custom_bottom_bar.dart';
import 'package:alexandra_descoteaux_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class RecommendationVoneScreen extends StatelessWidget {
  RecommendationVoneScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<RecommendationVoneBloc>(
        create: (context) => RecommendationVoneBloc(RecommendationVoneState(
            recommendationVoneModelObj: RecommendationVoneModel()))
          ..add(RecommendationVoneInitialEvent()),
        child: RecommendationVoneScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<RecommendationVoneBloc, RecommendationVoneState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.yellow700.withOpacity(0.68),
              appBar: CustomAppBar(
                  height: 42.v,
                  leadingWidth: 41.h,
                  leading: AppbarImage(
                      svgPath: ImageConstant.imgArrowleftYellow900,
                      margin:
                          EdgeInsets.only(left: 17.h, top: 9.v, bottom: 9.v),
                      onTap: () {
                        onTapArrowleftone(context);
                      }),
                  title: AppbarTitle(
                      text: "lbl_recommendations".tr,
                      margin: EdgeInsets.only(left: 143.h))),
              body: Container(
                  width: 395.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 8.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 55.h),
                            child: Text("lbl_high_uv_level".tr,
                                style: theme.textTheme.headlineLarge)),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                width: 282.h,
                                margin: EdgeInsets.only(
                                    left: 32.h, top: 5.v, right: 40.h),
                                child: Text("msg_try_to_find_some".tr,
                                    maxLines: 9,
                                    overflow: TextOverflow.ellipsis,
                                    style: theme.textTheme.titleLarge!
                                        .copyWith(height: 1.27)))),
                        CustomElevatedButton(
                            text: "lbl_learn_more".tr,
                            margin: EdgeInsets.only(
                                left: 1.h, top: 13.v, right: 19.h)),
                        SizedBox(height: 30.v),
                        RichText(
                            text: TextSpan(children: [
                              TextSpan(text: " "),
                              TextSpan(
                                  text: "lbl_actions2".tr,
                                  style: CustomTextStyles.headlineMediumBold)
                            ]),
                            textAlign: TextAlign.left),
                        CustomElevatedButton(
                            text: "msg_set_sunscreen_timer".tr,
                            margin: EdgeInsets.only(
                                left: 1.h, top: 17.v, right: 18.h),
                            leftIcon: Container(
                                margin: EdgeInsets.only(right: 2.h),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgClockGray100))),
                        CustomElevatedButton(
                            text: "msg_enable_uv_alerts".tr,
                            margin: EdgeInsets.only(
                                top: 9.v, right: 19.h, bottom: 5.v),
                            leftIcon: Container(
                                margin: EdgeInsets.only(right: 17.h),
                                child: CustomImageView(
                                    svgPath: ImageConstant.imgNotification)))
                      ])),
              bottomNavigationBar:
                  CustomBottomBar(onChanged: (BottomBarEnum type) {
                Navigator.pushNamed(
                    navigatorKey.currentContext!, getCurrentRoute(type));
              })));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Profile:
        return AppRoutes.uvStatusVonePage;
      case BottomBarEnum.Uvdashboard:
        return "/";
      case BottomBarEnum.Analytics:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.uvStatusVonePage:
        return UvStatusVonePage.builder(context);
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is
  /// used to build the navigation stack. When the action is triggered, this
  /// function uses the [NavigatorService] to navigate to the previous screen
  /// in the navigation stack.
  onTapArrowleftone(BuildContext context) {
    NavigatorService.goBack();
  }
}
