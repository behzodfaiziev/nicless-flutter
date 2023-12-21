import 'package:flutter/material.dart';

import '../app_colors.dart';
import 'primary_text_theme_light.dart';
import 'text_theme_light.dart';

class AppThemeLight {
  ThemeData get theme => ThemeData(
        primaryColor: AppColors.primaryLight,
        colorScheme: const ColorScheme.light(
          primary: AppColors.primaryLight,
          secondary: AppColors.secondaryLight,
          background: AppColors.backgroundLight,
          error: AppColors.errorLight,
        ),
        textTheme: TextThemeLight.textTheme,
        primaryTextTheme: PrimaryTextThemeLight.textTheme,
      );
}
