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
  );
}
