import 'bloc/sign_up_vone_bloc.dart';
import 'models/sign_up_vone_model.dart';
import 'package:alexandra_descoteaux_s_application2/core/app_export.dart';
import 'package:alexandra_descoteaux_s_application2/core/utils/validation_functions.dart';
import 'package:alexandra_descoteaux_s_application2/widgets/custom_elevated_button.dart';
import 'package:alexandra_descoteaux_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:alexandra_descoteaux_s_application2/domain/googleauth/google_auth_helper.dart';
import 'package:alexandra_descoteaux_s_application2/domain/facebookauth/facebook_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignUpVoneScreen extends StatelessWidget {
  SignUpVoneScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignUpVoneBloc>(
        create: (context) => SignUpVoneBloc(
            SignUpVoneState(signUpVoneModelObj: SignUpVoneModel()))
          ..add(SignUpVoneInitialEvent()),
        child: SignUpVoneScreen());
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
                          height: 73.v,
                          width: 80.h),
                      SizedBox(height: 7.v),
                      Text("lbl_welcome_to_huvi".tr,
                          style: theme.textTheme.headlineMedium),
                      SizedBox(height: 11.v),
                      Text("msg_sign_up_for_your".tr,
                          style: CustomTextStyles.bodyMediumBluegray600),
                      SizedBox(height: 12.v),
                      BlocSelector<SignUpVoneBloc, SignUpVoneState,
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
                      BlocBuilder<SignUpVoneBloc, SignUpVoneState>(
                          builder: (context, state) {
                        return CustomTextFormField(
                            controller: state.passwordController,
                            hintText: "lbl_password".tr,
                            textInputAction: TextInputAction.done,
                            textInputType: TextInputType.visiblePassword,
                            suffix: InkWell(
                                onTap: () {
                                  context.read<SignUpVoneBloc>().add(
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
                      SizedBox(height: 24.v),
                      CustomElevatedButton(
                          text: "lbl_sign_up".tr,
                          buttonStyle: CustomButtonStyles.fillYellow),
                      SizedBox(height: 35.v),
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
                      SizedBox(height: 32.v),
                      CustomElevatedButton(
                          text: "msg_continue_with_google".tr,
                          leftIcon: Container(
                              margin: EdgeInsets.only(right: 30.h),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgIconsLogogoogle)),
                          buttonStyle: CustomButtonStyles.fillWhiteA,
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
                          buttonStyle: CustomButtonStyles.fillWhiteA,
                          buttonTextStyle: CustomTextStyles.titleSmallYellow700,
                          onTap: () {
                            onTapContinuewith1(context);
                          }),
                      SizedBox(height: 67.v),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text("msg_already_have_an".tr,
                                style: CustomTextStyles.bodyMediumYellow700),
                            Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text("lbl_login".tr,
                                    style: CustomTextStyles
                                        .bodyMediumYellow700_1
                                        .copyWith(
                                            decoration:
                                                TextDecoration.underline)))
                          ]),
                      Container(
                          width: 281.h,
                          margin: EdgeInsets.fromLTRB(26.h, 49.v, 26.h, 5.v),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "msg_by_creating_an_account2".tr,
                                    style: CustomTextStyles
                                        .bodySmallBluegray600_1),
                                TextSpan(
                                    text: "msg_terms_and_conditions".tr,
                                    style: theme.textTheme.bodySmall),
                                TextSpan(
                                    text: "lbl_you_read_our".tr,
                                    style: CustomTextStyles
                                        .bodySmallBluegray600_1),
                                TextSpan(
                                    text: "lbl_privacy_policy".tr,
                                    style: theme.textTheme.bodySmall)
                              ]),
                              textAlign: TextAlign.center))
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
