import 'package:flutter/material.dart';

import '../constants/app_sizes.dart';
import 'app_bar_theme.dart';
import 'colors.dart';
import 'elevated_button_theme.dart';
import 'input_decoration_theme.dart';

abstract class AppTheme {
  static ThemeData light = ThemeData(
    colorScheme: const ColorScheme.light(primary: AppColors.primary),
    useMaterial3: true,
    fontFamily: 'Lato',
    disabledColor: AppColors.secondaryLight,
    brightness: Brightness.light,
    primaryColor: AppColors.primary,
    // textTheme: TTextTheme.lightTextTheme,
    scaffoldBackgroundColor: AppColors.background,
    elevatedButtonTheme: AppElevatedButtonTheme.data,
    inputDecorationTheme: MyInputDecorationTheme.light,
    appBarTheme: MyAppBarTheme.dark,
    dividerTheme: const DividerThemeData(
      color: AppColors.secondaryLight,
      thickness: AppSizes.dividerThickness,
    ),
  );
}
