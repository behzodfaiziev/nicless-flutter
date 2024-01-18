import 'package:flutter/material.dart';

import '../app_colors.dart';

class TextThemeDark {
  static TextTheme get textTheme => TextTheme(
        titleMedium: const TextStyle(
          color: Colors.white,
        ),
        titleLarge: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
        headlineSmall: TextStyle(
          color: AppColors.greyDarkHeadLineMedium,
        ),
        displayLarge: const TextStyle(
          color: Colors.white,
        ),
        displayMedium: TextStyle(
          color: AppColors.greyDarkDisplaySmall,
          fontWeight: FontWeight.w600,
        ),
        displaySmall: TextStyle(
          color: AppColors.greyDarkDisplaySmall,
          fontWeight: FontWeight.w500,
        ),
      );
}
