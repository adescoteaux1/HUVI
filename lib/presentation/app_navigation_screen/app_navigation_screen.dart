import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:alexandra_descoteaux_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
        create: (context) => AppNavigationBloc(
            AppNavigationState(appNavigationModelObj: AppNavigationModel()))
          ..add(AppNavigationInitialEvent()),
        child: AppNavigationScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.whiteA700,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(children: [
                    Container(
                        decoration: AppDecoration.fillWhiteA,
                        child: Column(children: [
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 20.h, vertical: 10.v),
                                  child: Text("lbl_app_navigation".tr,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: appTheme.black90001,
                                          fontSize: 20.fSize,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400)))),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 20.h),
                                  child: Text("msg_check_your_app_s".tr,
                                      textAlign: TextAlign.center,
                                      style: TextStyle(
                                          color: appTheme.blueGray40001,
                                          fontSize: 16.fSize,
                                          fontFamily: 'Roboto',
                                          fontWeight: FontWeight.w400)))),
                          SizedBox(height: 5.v),
                          Divider(
                              height: 1.v,
                              thickness: 1.v,
                              color: appTheme.black90001)
                        ])),
                    Expanded(
                        child: SingleChildScrollView(
                            child: Container(
                                decoration: AppDecoration.fillWhiteA,
                                child: Column(children: [
                                  GestureDetector(
                                      onTap: () {
                                        onTapSignUpvOne(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_sign_up_vone".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black90001,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray40001)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapLoginvTwo(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_login_vtwo".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black90001,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray40001)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapProfilevOne(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_profile_vone".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black90001,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray40001)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapWelcomevTwo(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "lbl_welcome_vtwo".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black90001,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray40001)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapUVstatusvOneContainer(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "msg_uv_status_vone".tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black90001,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray40001)
                                          ]))),
                                  GestureDetector(
                                      onTap: () {
                                        onTapRecommendationvOne(context);
                                      },
                                      child: Container(
                                          decoration: AppDecoration.fillWhiteA,
                                          child: Column(children: [
                                            Align(
                                                alignment: Alignment.centerLeft,
                                                child: Padding(
                                                    padding:
                                                        EdgeInsets.symmetric(
                                                            horizontal: 20.h,
                                                            vertical: 10.v),
                                                    child: Text(
                                                        "msg_recommendation_vone"
                                                            .tr,
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: TextStyle(
                                                            color: appTheme
                                                                .black90001,
                                                            fontSize: 20.fSize,
                                                            fontFamily:
                                                                'Roboto',
                                                            fontWeight:
                                                                FontWeight
                                                                    .w400)))),
                                            SizedBox(height: 5.v),
                                            Divider(
                                                height: 1.v,
                                                thickness: 1.v,
                                                color: appTheme.blueGray40001)
                                          ])))
                                ]))))
                  ]))));
    });
  }

  /// Navigates to the signUpVoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the signUpVoneScreen.
  onTapSignUpvOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.signUpVoneScreen,
    );
  }

  /// Navigates to the loginVtwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the loginVtwoScreen.
  onTapLoginvTwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.loginVtwoScreen,
    );
  }

  /// Navigates to the profileVoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the profileVoneScreen.
  onTapProfilevOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.profileVoneScreen,
    );
  }

  /// Navigates to the welcomeVtwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the welcomeVtwoScreen.
  onTapWelcomevTwo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.welcomeVtwoScreen,
    );
  }

  /// Navigates to the uvStatusVoneContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the uvStatusVoneContainerScreen.
  onTapUVstatusvOneContainer(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.uvStatusVoneContainerScreen,
    );
  }

  /// Navigates to the recommendationVoneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the [NavigatorService]
  /// to push the named route for the recommendationVoneScreen.
  onTapRecommendationvOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.recommendationVoneScreen,
    );
  }
}
