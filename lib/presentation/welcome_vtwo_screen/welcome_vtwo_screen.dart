import 'bloc/welcome_vtwo_bloc.dart';
import 'models/welcome_vtwo_model.dart';
import 'package:alexandra_descoteaux_s_application2/core/app_export.dart';
import 'package:alexandra_descoteaux_s_application2/widgets/custom_outlined_button.dart';
import 'package:flutter/material.dart';

class WelcomeVtwoScreen extends StatelessWidget {
  const WelcomeVtwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WelcomeVtwoBloc>(
        create: (context) => WelcomeVtwoBloc(
            WelcomeVtwoState(welcomeVtwoModelObj: WelcomeVtwoModel()))
          ..add(WelcomeVtwoInitialEvent()),
        child: WelcomeVtwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<WelcomeVtwoBloc, WelcomeVtwoState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 39.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgHuvilogo1removebgpreview,
                        height: 176.v,
                        width: 166.h),
                    SizedBox(height: 51.v),
                    Text("lbl_huvi".tr, style: theme.textTheme.displayMedium),
                    Spacer(),
                    Text("lbl_welcome".tr,
                        style: theme.textTheme.headlineLarge),
                    SizedBox(height: 23.v),
                    CustomOutlinedButton(text: "lbl_get_started".tr),
                    SizedBox(height: 36.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "msg_already_have_an3".tr,
                              style: CustomTextStyles.bodyMediumBlack90001_1),
                          TextSpan(
                              text: "lbl_log_in2".tr,
                              style: CustomTextStyles
                                  .bodyMediumSecondaryContainer
                                  .copyWith(
                                      decoration: TextDecoration.underline))
                        ]),
                        textAlign: TextAlign.left),
                    SizedBox(height: 25.v)
                  ]))));
    });
  }
}
