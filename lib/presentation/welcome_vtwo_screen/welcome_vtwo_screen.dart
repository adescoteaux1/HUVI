import 'package:alexandra_descoteaux_s_application2/core/app_export.dart';
import 'package:alexandra_descoteaux_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class WelcomeVtwoScreen extends StatelessWidget {
  const WelcomeVtwoScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 39.v,
          ),
          child: Column(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgHuvilogo1removebgpreview,
                height: 176.v,
                width: 166.h,
              ),
              SizedBox(height: 51.v),
              Text(
                "HUVI",
                style: theme.textTheme.displayMedium,
              ),
              Spacer(),
              Text(
                "Welcome!",
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 23.v),
              CustomOutlinedButton(
                text: "Get Started",
              ),
              SizedBox(height: 36.v),
              RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "Already have an account? ",
                      style: CustomTextStyles.bodyMediumBlack90001_1,
                    ),
                    TextSpan(
                      text: "Log in",
                      style: CustomTextStyles.bodyMediumSecondaryContainer
                          .copyWith(
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
                textAlign: TextAlign.left,
              ),
              SizedBox(height: 25.v),
            ],
          ),
        ),
      ),
    );
  }
}
