import 'package:flutter/material.dart';
import 'package:orion_commons/core/theme/theme_constants.dart';

class AppTextStyles {
  AppTextStyles._();
  // headline

  static TextStyle headlineLarge = TextStyle(
    fontFamily: 'wittgenstein',
    fontSize: 32,
    fontWeight: FontWeight.w700,
    color: ThemeConstants.titleColor,
  );

  static TextStyle headlineMedium = TextStyle(
    fontFamily: 'wittgenstein',
    fontSize: 28,
    fontWeight: FontWeight.w600,
    color: ThemeConstants.titleColor,
  );

  // Body

  static TextStyle bodyLarge = TextStyle(
    fontFamily: 'manrope',
    fontSize: 15,
    fontWeight: FontWeight.w400,
    color: Color(0xFF222522),
  );

  static  TextStyle bodyMedium = TextStyle(
    fontFamily: 'manrope',
    fontSize: 14,
    fontWeight: FontWeight.w400,
    color: ThemeConstants.textColor,
  );

  // Labels / Buttons

  static TextStyle labelLarge = TextStyle(
    fontFamily: 'manrope',
    fontSize: 16,
    fontWeight: FontWeight.w700,
    color:ThemeConstants.white,
  );
}