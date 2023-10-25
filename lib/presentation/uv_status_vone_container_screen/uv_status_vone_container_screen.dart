import 'bloc/uv_status_vone_container_bloc.dart';
import 'models/uv_status_vone_container_model.dart';
import 'package:alexandra_descoteaux_s_application2/core/app_export.dart';
import 'package:alexandra_descoteaux_s_application2/presentation/uv_status_vone_page/uv_status_vone_page.dart';
import 'package:alexandra_descoteaux_s_application2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class UvStatusVoneContainerScreen extends StatelessWidget {
  UvStatusVoneContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<UvStatusVoneContainerBloc>(
        create: (context) => UvStatusVoneContainerBloc(
            UvStatusVoneContainerState(
                uvStatusVoneContainerModelObj: UvStatusVoneContainerModel()))
          ..add(UvStatusVoneContainerInitialEvent()),
        child: UvStatusVoneContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<UvStatusVoneContainerBloc, UvStatusVoneContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.gray50,
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.uvStatusVonePage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
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
}
