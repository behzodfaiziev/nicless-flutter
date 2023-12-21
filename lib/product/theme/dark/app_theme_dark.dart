import 'package:flutter/material.dart';

import '../app_colors.dart';

class AppThemeDark {
  ThemeData get theme => ThemeData(
    primaryColor: AppColors.primaryDark,
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryDark,
      secondary: AppColors.secondaryDark,
      background: AppColors.backgroundDark,
      error: AppColors.errorDark,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.backgroundDark,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),

    ),
    bottomNavigationBarTheme:  BottomNavigationBarThemeData(
      backgroundColor: Colors.red[700],
      elevation: 5,
      selectedItemColor: AppColors.primaryDark,
      unselectedItemColor: Colors.grey,
    ),
  );
}
