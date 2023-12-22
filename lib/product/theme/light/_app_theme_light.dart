import 'package:flutter/material.dart';

import '../app_colors.dart';
import 'primary_text_theme_light.dart';
import 'text_theme_light.dart';

class AppThemeLight {
  ThemeData get theme => ThemeData(
        /// Texts
        textTheme: TextThemeLight.textTheme,
        primaryTextTheme: PrimaryTextThemeLight.textTheme,

        /// Colors
        primaryColor: AppColors.primaryLight,
        colorScheme: const ColorScheme.light(
          primary: AppColors.primaryLight,
          secondary: AppColors.secondaryLight,
          background: AppColors.backgroundLight,
          error: AppColors.errorLight,
        ),

        /// AppBar
        appBarTheme: const AppBarTheme(
          backgroundColor: AppColors.backgroundLight,
          elevation: 0,
          titleTextStyle: TextStyle(
            color: AppColors.secondaryLight,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        bottomNavigationBarTheme: const BottomNavigationBarThemeData(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          elevation: 5,
          selectedItemColor: AppColors.primaryDark,
          unselectedItemColor: Colors.grey,
        ),
      );
}
