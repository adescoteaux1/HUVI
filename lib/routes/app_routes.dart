import 'package:flutter/material.dart';
import 'package:alexandra_descoteaux_s_application2/presentation/sign_up_vone_screen/sign_up_vone_screen.dart';
import 'package:alexandra_descoteaux_s_application2/presentation/login_vtwo_screen/login_vtwo_screen.dart';
import 'package:alexandra_descoteaux_s_application2/presentation/profile_vone_screen/profile_vone_screen.dart';
import 'package:alexandra_descoteaux_s_application2/presentation/welcome_vtwo_screen/welcome_vtwo_screen.dart';
import 'package:alexandra_descoteaux_s_application2/presentation/uv_status_vone_container_screen/uv_status_vone_container_screen.dart';
import 'package:alexandra_descoteaux_s_application2/presentation/recommendation_vone_screen/recommendation_vone_screen.dart';
import 'package:alexandra_descoteaux_s_application2/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String signUpVoneScreen = '/sign_up_vone_screen';

  static const String loginVtwoScreen = '/login_vtwo_screen';

  static const String profileVoneScreen = '/profile_vone_screen';

  static const String welcomeVtwoScreen = '/welcome_vtwo_screen';

  static const String uvStatusVonePage = '/uv_status_vone_page';

  static const String uvStatusVoneContainerScreen =
      '/uv_status_vone_container_screen';

  static const String recommendationVoneScreen = '/recommendation_vone_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        signUpVoneScreen: SignUpVoneScreen.builder,
        loginVtwoScreen: LoginVtwoScreen.builder,
        profileVoneScreen: ProfileVoneScreen.builder,
        welcomeVtwoScreen: WelcomeVtwoScreen.builder,
        uvStatusVoneContainerScreen: UvStatusVoneContainerScreen.builder,
        recommendationVoneScreen: RecommendationVoneScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: WelcomeVtwoScreen.builder
      };
}
