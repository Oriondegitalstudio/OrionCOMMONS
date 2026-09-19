import 'package:flutter/material.dart';
import 'package:orion_commons/core/theme/app_text_styles.dart';
import 'package:orion_commons/core/theme/theme_constants.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      primaryColor: ThemeConstants.primaryColor,
      colorScheme: ColorScheme.fromSeed(
        seedColor: ThemeConstants.primaryColor,
        secondary: ThemeConstants.secondaryColor,
        error: ThemeConstants.errorColor,
      ),
      scaffoldBackgroundColor: ThemeConstants.backgroundColor,
      appBarTheme: const AppBarTheme(
        backgroundColor: ThemeConstants.primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
      ),
      textTheme: const TextTheme(
        headlineLarge: AppTextStyles.headlineLarge,
        headlineMedium: AppTextStyles.headlineMedium,
        bodyLarge: AppTextStyles.bodyLarge,
        bodyMedium: AppTextStyles.bodyMedium,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ThemeConstants.primaryColor,
          foregroundColor: Colors.white,
          textStyle: AppTextStyles.labelLarge,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(ThemeConstants.borderRadius),
          ),
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
    );
  }
}
