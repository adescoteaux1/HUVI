import 'bloc/login_vtwo_bloc.dart';
import 'models/login_vtwo_model.dart';
import 'package:alexandra_descoteaux_s_application2/core/app_export.dart';
import 'package:alexandra_descoteaux_s_application2/core/utils/validation_functions.dart';
import 'package:alexandra_descoteaux_s_application2/widgets/custom_elevated_button.dart';
import 'package:alexandra_descoteaux_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:alexandra_descoteaux_s_application2/domain/googleauth/google_auth_helper.dart';
import 'package:alexandra_descoteaux_s_application2/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class LoginVtwoScreen extends StatelessWidget {
  LoginVtwoScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginVtwoBloc>(
        create: (context) =>
            LoginVtwoBloc(LoginVtwoState(loginVtwoModelObj: LoginVtwoModel()))
              ..add(LoginVtwoInitialEvent()),
        child: LoginVtwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Column(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgHuvilogo1removebgpreview,
                          height: 74.v,
                          width: 80.h,
                          alignment: Alignment.centerLeft),
                      SizedBox(height: 5.v),
                      Text("lbl_welcome_back".tr,
                          style: theme.textTheme.headlineMedium),
                      SizedBox(height: 11.v),
                      Text("msg_log_in_to_your_huvi".tr,
                          style: CustomTextStyles.bodyMediumBluegray600),
                      SizedBox(height: 48.v),
                      BlocSelector<LoginVtwoBloc, LoginVtwoState,
                              TextEditingController?>(
                          selector: (state) => state.emailController,
                          builder: (context, emailController) {
                            return CustomTextFormField(
                                controller: emailController,
                                hintText: "lbl_email".tr,
                                textInputType: TextInputType.emailAddress,
                                validator: (value) {
                                  if (value == null ||
                                      (!isValidEmail(value,
                                          isRequired: true))) {
                                    return "Please enter valid email";
                                  }
                                  return null;
                                });
                          }),
                      SizedBox(height: 24.v),
                      BlocBuilder<LoginVtwoBloc, LoginVtwoState>(
                          builder: (context, state) {
                        return CustomTextFormField(
                            controller: state.passwordController,
                            hintText: "lbl_password".tr,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            suffix: InkWell(
                                onTap: () {
                                  context.read<LoginVtwoBloc>().add(
                                      ChangePasswordVisibilityEvent(
                                          value: !state.isShowPassword));
                                },
                                child: Container(
                                    margin: EdgeInsets.fromLTRB(
                                        30.h, 14.v, 13.h, 14.v),
                                    child: CustomImageView(
                                        svgPath: state.isShowPassword
                                            ? ImageConstant.imgEye
                                            : ImageConstant.imgEye))),
                            suffixConstraints: BoxConstraints(maxHeight: 49.v),
                            validator: (value) {
                              if (value == null ||
                                  (!isValidPassword(value, isRequired: true))) {
                                return "Please enter valid password";
                              }
                              return null;
                            },
                            obscureText: state.isShowPassword,
                            contentPadding: EdgeInsets.only(
                                left: 13.h, top: 16.v, bottom: 16.v));
                      }),
                      SizedBox(height: 28.v),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_forgot_password2".tr,
                                    style:
                                        CustomTextStyles.bodyMediumYellow700_2),
                                TextSpan(
                                    text: "msg_reset_your_password".tr,
                                    style: CustomTextStyles
                                        .bodyMediumYellow700_3
                                        .copyWith(
                                            decoration:
                                                TextDecoration.underline))
                              ]),
                              textAlign: TextAlign.left)),
                      SizedBox(height: 23.v),
                      CustomElevatedButton(
                          text: "lbl_login".tr,
                          buttonStyle: CustomButtonStyles.fillYellow),
                      SizedBox(height: 45.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 6.v, bottom: 9.v),
                                child:
                                    SizedBox(width: 103.h, child: Divider())),
                            Text("msg_or_better_yet".tr,
                                style: CustomTextStyles.bodyMediumLightblue400),
                            Padding(
                                padding: EdgeInsets.only(top: 6.v, bottom: 9.v),
                                child: SizedBox(width: 103.h, child: Divider()))
                          ]),
                      SizedBox(height: 24.v),
                      CustomElevatedButton(
                          text: "msg_continue_with_google".tr,
                          leftIcon: Container(
                              margin: EdgeInsets.only(right: 30.h),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgIconsLogogoogle)),
                          buttonStyle: CustomButtonStyles.fillGray,
                          buttonTextStyle: CustomTextStyles.titleSmallYellow700,
                          onTap: () {
                            onTapContinuewith(context);
                          }),
                      SizedBox(height: 16.v),
                      CustomElevatedButton(
                          text: "msg_continue_with_facebook".tr,
                          leftIcon: Container(
                              margin: EdgeInsets.only(right: 30.h),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgIconsLogofacebook)),
                          buttonStyle: CustomButtonStyles.fillGray,
                          buttonTextStyle: CustomTextStyles.titleSmallYellow700,
                          onTap: () {
                            onTapContinuewith1(context);
                          }),
                      SizedBox(height: 44.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 1.v),
                                child: Text("msg_don_t_have_an_account".tr,
                                    style:
                                        CustomTextStyles.bodyMediumYellow700)),
                            Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text("lbl_sign_up".tr,
                                    style: CustomTextStyles
                                        .bodyMediumYellow700_1
                                        .copyWith(
                                            decoration:
                                                TextDecoration.underline)))
                          ]),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Performs a Google sign-in and returns a [GoogleUser] object.
  ///
  /// If the sign-in is successful, the [onSuccess] callback will be called with
  /// a TODO comment needed to be modified by you.
  /// If the sign-in fails, the [onError] callback will be called with the error message.
  ///
  /// Throws an exception if the Google sign-in process fails.
  onTapContinuewith(BuildContext context) async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        ScaffoldMessenger.of(context)
            .showSnackBar(const SnackBar(content: Text('user data is empty')));
      }
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }

  /// Performs a Facebook sign-in and returns a [FacebookUser] object.
  ///
  /// If the sign-in is successful, the [onSuccess] callback will be called with
  /// a TODO comment needed to be modified by you.
  /// If the sign-in fails, the [onError] callback will be called with the error message.
  ///
  /// Throws an exception if the Facebook sign-in process fails.
  onTapContinuewith1(BuildContext context) async {
    await FacebookAuthHelper().facebookSignInProcess().then((facebookUser) {
      //TODO Actions to be performed after signin
    }).catchError((onError) {
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(onError.toString())));
    });
  }
}
