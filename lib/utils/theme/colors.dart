import 'package:flutter/material.dart';

abstract class AppColors {
  static const Color primary = Color(0xFF192126);
  static const Color accent = Color(0xFFBBF246);

  static const Color secondaryLight = Color(0xFF8B8F92);
  static const Color secondary = Color(0xFF5E6468);
  static const Color secondaryDark = Color(0xFF384046);

  static const Color background = Color(0xFFF7F6FA);
  static const Color backgroundDark = primary;

  static const Color textPrimary = primary;
  static final Color textSecondary = primary.withOpacity(0.5);

  static const Color purple = Color(0xFFA48AED);
  static const Color purpleLight = Color(0xFFEAECFF);

  static const Color red = Color(0xFFED4747);
  static const Color redLight = Color(0xFFFFEBEB);

  static const Color orange = Color(0xFFFCC46F);
  static const Color orangeLight = Color(0xFFFFE8C6);

  static const Color blue = Color(0xFF95CCE3);
  static const Color blueLight = Color(0xFFD8E6EC);

  static const Color white = Colors.white;
  static const Color black = Colors.black;
}
