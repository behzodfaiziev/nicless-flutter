import 'package:flutter/material.dart';

import '../app_colors.dart';

class TextThemeDark {
  static TextTheme get textTheme => TextTheme(
        titleMedium: const TextStyle(
          color: Colors.white,
        ),
        headlineSmall: TextStyle(
          color: AppColors.greyDarkHeadLineMedium,
        ),
        displayLarge: const TextStyle(
          color: Colors.white,
        ),
        displaySmall: TextStyle(
          color: AppColors.greyDarkDisplaySmall,
          fontWeight: FontWeight.bold,
        ),
      );
}
