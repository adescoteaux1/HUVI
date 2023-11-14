import 'package:alexandra_descoteaux_s_application2/core/app_export.dart';
import 'package:alexandra_descoteaux_s_application2/widgets/custom_elevated_button.dart';
import 'package:alexandra_descoteaux_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginVtwoScreen extends StatelessWidget {
  LoginVtwoScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgHuvilogo1removebgpreview,
                  height: 74.v,
                  width: 80.h,
                  alignment: Alignment.centerLeft,
                ),
                SizedBox(height: 5.v),
                Text(
                  "Welcome Back!",
                  style: theme.textTheme.headlineMedium,
                ),
                SizedBox(height: 11.v),
                Text(
                  "Log in to your HUVI account",
                  style: CustomTextStyles.bodyMediumBluegray600,
                ),
                SizedBox(height: 48.v),
                CustomTextFormField(
                  controller: emailController,
                  hintText: "Email",
                  textInputType: TextInputType.emailAddress,
                ),
                SizedBox(height: 24.v),
                CustomTextFormField(
                  controller: passwordController,
                  hintText: "Password",
                  textInputAction: TextInputAction.done,
                  textInputType: TextInputType.visiblePassword,
                  suffix: Container(
                    margin: EdgeInsets.fromLTRB(30.h, 14.v, 13.h, 14.v),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgEye,
                    ),
                  ),
                  suffixConstraints: BoxConstraints(
                    maxHeight: 49.v,
                  ),
                  obscureText: true,
                  contentPadding: EdgeInsets.only(
                    left: 13.h,
                    top: 16.v,
                    bottom: 16.v,
                  ),
                ),
                SizedBox(height: 28.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "Forgot password? ",
                          style: CustomTextStyles.bodyMediumYellow700_2,
                        ),
                        TextSpan(
                          text: "Reset your password",
                          style:
                              CustomTextStyles.bodyMediumYellow700_3.copyWith(
                            decoration: TextDecoration.underline,
                          ),
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 23.v),
                CustomElevatedButton(
                  text: "Login",
                  buttonStyle: CustomButtonStyles.fillYellow,
                ),
                SizedBox(height: 45.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                        top: 6.v,
                        bottom: 9.v,
                      ),
                      child: SizedBox(
                        width: 103.h,
                        child: Divider(),
                      ),
                    ),
                    Text(
                      "Or better yet...",
                      style: CustomTextStyles.bodyMediumLightblue400,
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        top: 6.v,
                        bottom: 9.v,
                      ),
                      child: SizedBox(
                        width: 103.h,
                        child: Divider(),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 24.v),
                CustomElevatedButton(
                  text: "Continue with Google",
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 30.h),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgIconsLogogoogle,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.fillGray,
                  buttonTextStyle: CustomTextStyles.titleSmallYellow700,
                ),
                SizedBox(height: 16.v),
                CustomElevatedButton(
                  text: "Continue with Facebook",
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 30.h),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgIconsLogofacebook,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.fillGray,
                  buttonTextStyle: CustomTextStyles.titleSmallYellow700,
                ),
                SizedBox(height: 44.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(bottom: 1.v),
                      child: Text(
                        "Don’t have an account?",
                        style: CustomTextStyles.bodyMediumYellow700,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "Sign Up",
                        style: CustomTextStyles.bodyMediumYellow700_1.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
