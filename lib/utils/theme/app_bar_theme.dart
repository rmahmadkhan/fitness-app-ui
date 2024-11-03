import 'package:flutter/material.dart';

import '../constants/app_sizes.dart';
import 'colors.dart';

abstract class MyAppBarTheme {
  static const dark = AppBarTheme(
    elevation: 0,
    centerTitle: true,
    scrolledUnderElevation: 0,
    backgroundColor: AppColors.primary,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(
      color: AppColors.white,
      size: AppSizes.appBarIconSize,
    ),
    actionsIconTheme: IconThemeData(
      color: AppColors.white,
      size: AppSizes.appBarIconSize,
    ),
    titleTextStyle: TextStyle(
      fontSize: AppSizes.appBarTitleSize,
      fontWeight: FontWeight.w500,
      color: AppColors.white,
    ),
  );
}
