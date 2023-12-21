import 'package:flutter/material.dart';

import '../app_colors.dart';

class PrimaryTextThemeDark {
  static TextTheme get textTheme => const TextTheme(
        titleMedium: TextStyle(
          fontWeight: FontWeight.w600,
          color: AppColors.white,
        ),
        bodyMedium: TextStyle(
          fontWeight: FontWeight.w500,
          color: AppColors.white,
        ),
      );
}
