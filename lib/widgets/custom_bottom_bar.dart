import 'package:alexandra_descoteaux_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavprofile,
      activeIcon: ImageConstant.imgNavprofile,
      title: "\n\nProfile",
      type: BottomBarEnum.Profile,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavuvdashboard,
      activeIcon: ImageConstant.imgNavuvdashboard,
      title: "UV Dashboard",
      type: BottomBarEnum.Uvdashboard,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavanalytics,
      activeIcon: ImageConstant.imgNavanalytics,
      title: "\n\nAnalytics",
      type: BottomBarEnum.Analytics,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.v,
      margin: EdgeInsets.only(
        left: 8.h,
        right: 29.h,
      ),
      decoration: BoxDecoration(
        border: Border(
          top: BorderSide(
            color: appTheme.black90001,
            width: 1.h,
          ),
          bottom: BorderSide(
            color: appTheme.black90001,
            width: 1.h,
          ),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.outlineBlack,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomImageView(
                    svgPath: bottomMenuList[index].icon,
                    height: 34.adaptSize,
                    width: 34.adaptSize,
                    color: theme.colorScheme.onSecondaryContainer,
                    margin: EdgeInsets.only(top: 11.v),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      top: 3.v,
                      bottom: 16.v,
                    ),
                    child: Text(
                      bottomMenuList[index].title ?? "",
                      style: theme.textTheme.labelLarge!.copyWith(
                        color: theme.colorScheme.primaryContainer,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  svgPath: bottomMenuList[index].activeIcon,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  color: theme.colorScheme.onSecondaryContainer,
                ),
                Container(
                  width: 38.h,
                  margin: EdgeInsets.only(top: 1.v),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "",
                          style: CustomTextStyles.labelLargeOnPrimary,
                        ),
                        TextSpan(
                          text: "Profile",
                          style: theme.textTheme.labelLarge,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Profile,
  Uvdashboard,
  Analytics,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
