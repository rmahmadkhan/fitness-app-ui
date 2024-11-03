import 'package:flutter/material.dart';

import '../constants/app_sizes.dart';
import 'colors.dart';

abstract class MyInputDecorationTheme {
  static InputDecorationTheme light = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: AppColors.textSecondary,
    suffixIconColor: AppColors.textSecondary,
    labelStyle: const TextStyle(
      fontSize: AppSizes.fontSizeSm,
      color: AppColors.textPrimary,
    ),
    hintStyle: TextStyle(
      fontSize: AppSizes.fontSizeSm,
      color: AppColors.textSecondary,
    ),
    errorStyle: const TextStyle(
      fontSize: AppSizes.fontSizeSm,
      color: AppColors.red,
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
    ),
    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(
        width: AppSizes.inputFieldBorderWidth,
        color: AppColors.primary,
      ),
    ),
    errorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(
        width: AppSizes.inputFieldBorderWidth,
        color: AppColors.redLight,
      ),
    ),
    focusedErrorBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(AppSizes.inputFieldRadius),
      borderSide: const BorderSide(
        width: AppSizes.inputFieldBorderWidth,
        color: AppColors.red,
      ),
    ),
  );
}
