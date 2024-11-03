import 'package:flutter/material.dart';

import '../constants/app_sizes.dart';
import 'colors.dart';

abstract class AppElevatedButtonTheme {
  static final ElevatedButtonThemeData data = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: AppColors.white,
      backgroundColor: AppColors.primary,
      disabledForegroundColor: AppColors.secondaryLight,
      disabledBackgroundColor: AppColors.secondaryDark,
      padding: const EdgeInsets.symmetric(
        vertical: AppSizes.buttonVerticalPadding,
        horizontal: AppSizes.buttonHorizontalPadding,
      ),
      textStyle: const TextStyle(
        fontSize: AppSizes.buttonTextSize,
        color: AppColors.white,
        fontWeight: FontWeight.bold,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(AppSizes.buttonRadius),
      ),
    ),
  );
}
