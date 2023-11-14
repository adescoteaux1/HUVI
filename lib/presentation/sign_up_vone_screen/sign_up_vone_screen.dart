import 'package:alexandra_descoteaux_s_application2/core/app_export.dart';
import 'package:alexandra_descoteaux_s_application2/widgets/custom_elevated_button.dart';
import 'package:alexandra_descoteaux_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignUpVoneScreen extends StatelessWidget {
  SignUpVoneScreen({Key? key})
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
                  height: 73.v,
                  width: 80.h,
                ),
                SizedBox(height: 7.v),
                Text(
                  "Welcome to HUVI",
                  style: theme.textTheme.headlineMedium,
                ),
                SizedBox(height: 11.v),
                Text(
                  "Sign up for your HUVI account",
                  style: CustomTextStyles.bodyMediumBluegray600,
                ),
                SizedBox(height: 12.v),
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
                SizedBox(height: 24.v),
                CustomElevatedButton(
                  text: "Sign Up",
                  buttonStyle: CustomButtonStyles.fillYellow,
                ),
                SizedBox(height: 35.v),
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
                SizedBox(height: 32.v),
                CustomElevatedButton(
                  text: "Continue with Google",
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 30.h),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgIconsLogogoogle,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.fillWhiteA,
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
                  buttonStyle: CustomButtonStyles.fillWhiteA,
                  buttonTextStyle: CustomTextStyles.titleSmallYellow700,
                ),
                SizedBox(height: 67.v),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Already have an account?",
                      style: CustomTextStyles.bodyMediumYellow700,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: Text(
                        "Login",
                        style: CustomTextStyles.bodyMediumYellow700_1.copyWith(
                          decoration: TextDecoration.underline,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  width: 281.h,
                  margin: EdgeInsets.fromLTRB(26.h, 49.v, 26.h, 5.v),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "By creating an account, you accept our\n",
                          style: CustomTextStyles.bodySmallBluegray600_1,
                        ),
                        TextSpan(
                          text: "Terms and conditions",
                          style: theme.textTheme.bodySmall,
                        ),
                        TextSpan(
                          text: " you read our ",
                          style: CustomTextStyles.bodySmallBluegray600_1,
                        ),
                        TextSpan(
                          text: "Privacy Policy.",
                          style: theme.textTheme.bodySmall,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
