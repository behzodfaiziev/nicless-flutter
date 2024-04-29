import 'package:flutter/material.dart';

import '../../utils/constants/ui_constants/app_fonts.dart';
import '../../utils/constants/ui_constants/font_size_const.dart';
import '../app_colors.dart';

class PrimaryTextThemeDark {
  static TextTheme get textTheme => const TextTheme(
        titleSmall: TextStyle(
          color: AppColors.white,
          fontFamily: AppFonts.inriaSerif,
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          fontWeight: FontWeight.w600,
          color: AppColors.white,
        ),
        bodyMedium: TextStyle(
          fontWeight: FontWeight.w500,
          color: AppColors.white,
        ),
        titleLarge: TextStyle(
          fontWeight: FontWeight.w700,
          color: AppColors.white,
          fontFamily: AppFonts.inriaSerif,
        ),
        displaySmall: TextStyle(
          color: AppColors.white,
          fontSize: FontSizeConst.bigger,
          fontWeight: FontWeight.w400,
        ),
      );
}
