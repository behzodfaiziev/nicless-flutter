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
          onSecondary: Colors.black,
        ),
        appBarTheme: appBarTheme(),
        bottomNavigationBarTheme: bottomNavigationBarThemeData(),
        elevatedButtonTheme: elevatedButtonThemeData(),
        inputDecorationTheme: inputDecorationTheme(),
        disabledColor: AppColors.disabledColorDark,
        checkboxTheme: CheckboxThemeData(
          side: const BorderSide(color: AppColors.secondaryDark),
          shape: RoundedRectangleBorder(borderRadius: RadiusConst.smallRadius),
          checkColor: MaterialStateProperty.all(AppColors.secondaryDark),
        ),
      );

  AppBarTheme appBarTheme() {
    return const AppBarTheme(
      backgroundColor: AppColors.appBarBackgroundDark,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: Colors.white,
        fontSize: 20,
        fontWeight: FontWeight.w600,
      ),
    );
  }

  BottomNavigationBarThemeData bottomNavigationBarThemeData() {
    return const BottomNavigationBarThemeData(
        backgroundColor: AppColors.bottomNavBarDark,
        type: BottomNavigationBarType.fixed,
        elevation: 5,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        showUnselectedLabels: false,
        showSelectedLabels: true);
  }

  ElevatedButtonThemeData elevatedButtonThemeData() {
    return ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        disabledBackgroundColor: AppColors.disabledColorDark,
        disabledForegroundColor: Colors.white,
        backgroundColor: AppColors.elevatedButtonColorDark,
        shape: RoundedRectangleBorder(borderRadius: RadiusConst.largeRadius),
      ),
    );
  }

  InputDecorationTheme inputDecorationTheme() {
    return const InputDecorationTheme(
      border: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.secondaryDark, width: 0.4),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.secondaryDark, width: 0.4),
      ),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.secondaryDark, width: 0.4),
      ),
      errorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.errorDark),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: AppColors.errorDark),
      ),
      hintStyle: TextStyle(
          color: AppColors.hintColorDark,
          fontWeight: FontWeight.w300,
          fontSize: 14),
    );
  }
}
