import 'package:flutter/material.dart';
import 'package:product_dashboard/theme/app_colours.dart';
import 'package:product_dashboard/theme/text_styles.dart';

class AppTheme {
  static ThemeData get standardTheme => AppTheme()._standardTheme;

  final ThemeData _standardTheme = ThemeData(
      primaryColor: AppColours.darkestGrey,
      scaffoldBackgroundColor: AppColours.grey,
      primaryColorDark: AppColours.darkestGrey,
      primaryColorLight: AppColours.lightGrey,
      primaryIconTheme: const IconThemeData(color: AppColours.white),
      colorScheme:
          const ColorScheme.light().copyWith(primary: AppColours.white),
      toggleButtonsTheme: const ToggleButtonsThemeData(color: AppColours.white),
      drawerTheme: const DrawerThemeData(
          backgroundColor: AppColours.white, elevation: 2),
      appBarTheme: AppBarTheme(
          backgroundColor: AppColours.black,
          actionsIconTheme: const IconThemeData(color: AppColours.white),
          iconTheme: const IconThemeData(color: AppColours.white),
          titleTextStyle: TextStyles.b612MonoWhite),
      brightness: Brightness.light,
      textTheme: TextTheme(bodyText2: TextStyles.b612MonoWhite),
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: AppColours.white,
      ));
}
