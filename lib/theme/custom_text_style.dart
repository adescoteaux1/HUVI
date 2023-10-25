import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyMediumBlack90001 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get bodyMediumBlack90001_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black90001,
      );
  static get bodyMediumBluegray600 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.blueGray600,
      );
  static get bodyMediumLightblue400 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.lightBlue400,
      );
  static get bodyMediumSecondaryContainer =>
      theme.textTheme.bodyMedium!.copyWith(
        color: theme.colorScheme.secondaryContainer,
      );
  static get bodyMediumYellow700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.yellow700,
      );
  static get bodyMediumYellow700_1 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.yellow700,
      );
  static get bodyMediumYellow700_2 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.yellow700,
      );
  static get bodyMediumYellow700_3 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.yellow700,
      );
  static get bodySmallBluegray600 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray600,
      );
  static get bodySmallBluegray600_1 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.blueGray600,
      );
  // Headline text style
  static get headlineLargeBlack90001 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.black90001,
        fontSize: 30.fSize,
        fontWeight: FontWeight.w400,
      );
  static get headlineLargeYellow900 => theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.yellow900,
      );
  static get headlineLargeYellow900Bold =>
      theme.textTheme.headlineLarge!.copyWith(
        color: appTheme.yellow900,
        fontWeight: FontWeight.w700,
      );
  static get headlineMediumBold => theme.textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.w700,
      );
  static get headlineMediumRegular => theme.textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.w400,
      );
  static get headlineMediumRegular_1 =>
      theme.textTheme.headlineMedium!.copyWith(
        fontWeight: FontWeight.w400,
      );
  // Inter text style
  static get interBlack90001 => TextStyle(
        color: appTheme.black90001,
        fontSize: 80.fSize,
        fontWeight: FontWeight.w700,
      ).inter;
  // Label text style
  static get labelLargeInterWhiteA700 =>
      theme.textTheme.labelLarge!.inter.copyWith(
        color: appTheme.whiteA700,
        fontWeight: FontWeight.w600,
      );
  static get labelLargeMedium => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelLargeMedium_1 => theme.textTheme.labelLarge!.copyWith(
        fontWeight: FontWeight.w500,
      );
  static get labelLargeOnPrimary => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
  static get labelLargeOnPrimaryMedium => theme.textTheme.labelLarge!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontWeight: FontWeight.w500,
      );
  // Title text style
  static get titleLargeYellow900 => theme.textTheme.titleLarge!.copyWith(
        color: appTheme.yellow900,
        fontWeight: FontWeight.w400,
      );
  static get titleMediumBluegray600 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.blueGray600,
        fontWeight: FontWeight.w600,
      );
  static get titleMediumGray50 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.gray50,
      );
  static get titleMediumSemiBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w600,
      );
  static get titleSmallWhiteA700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.whiteA700,
      );
  static get titleSmallYellow700 => theme.textTheme.titleSmall!.copyWith(
        color: appTheme.yellow700,
      );
}

extension on TextStyle {
  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }

  TextStyle get inter {
    return copyWith(
      fontFamily: 'Inter',
    );
  }
}
