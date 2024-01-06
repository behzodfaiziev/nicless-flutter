import 'package:flutter/material.dart';

import '../../utils/constants/ui_constants/radius_const.dart';
import '../app_colors.dart';
import 'primary_text_theme_dark.dart';
import 'text_theme_dark.dart';

class AppThemeDark {
  ThemeData get theme => ThemeData(
      textTheme: TextThemeDark.textTheme,
      primaryTextTheme: PrimaryTextThemeDark.textTheme,
      primaryColor: AppColors.primaryDark,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primaryDark,
        secondary: AppColors.secondaryDark,
        background: AppColors.backgroundDark,
        error: AppColors.errorDark,
        onPrimary: Colors.white,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.appBarBackgroundDark,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.bottomNavBarDark,
        type: BottomNavigationBarType.fixed,
        elevation: 5,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        showUnselectedLabels: false,
        showSelectedLabels: true
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.elevatedButtonColorDark,
          shape: RoundedRectangleBorder(
              borderRadius: RadiusConst.extraLargeRadius),

        ),
      ));
}
