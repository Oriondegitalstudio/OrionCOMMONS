import 'package:flutter/material.dart';
import 'package:orion_commons/core/theme/app_text_styles.dart';
import 'package:orion_commons/core/theme/theme_constants.dart';

class AppTheme {
  AppTheme._();

  static ThemeData get lightTheme {
    final colorScheme = ColorScheme(
      brightness: Brightness.light,
      primary: ThemeConstants.primaryColor,
      onPrimary: Colors.white,
      secondary: ThemeConstants.secondaryColor,
      onSecondary: Colors.white,
      error: ThemeConstants.errorColor,
      onError: Colors.white,
      surface: ThemeConstants.backgroundColor,
      onSurface: ThemeConstants.titleColor,
    );
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,

      // Colors
      primaryColor: ThemeConstants.primaryColor,
      colorScheme: colorScheme,
      scaffoldBackgroundColor: ThemeConstants.backgroundColor,

      // Typography
      fontFamily: 'manrope',
      textTheme: TextTheme(
        headlineLarge: AppTextStyles.headlineLarge,
        headlineMedium: AppTextStyles.headlineMedium,
        bodyLarge: AppTextStyles.bodyLarge,
        bodyMedium: AppTextStyles.bodyMedium,
        labelLarge: AppTextStyles.labelLarge,
      ),

      // App Bar
      appBarTheme: const AppBarTheme(
        backgroundColor: ThemeConstants.primaryColor,
        foregroundColor: Colors.white,
        elevation: 0,
        centerTitle: false,
      ),

      // Buttons
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: ThemeConstants.primaryColor,
          foregroundColor: Colors.white,
          textStyle: AppTextStyles.labelLarge,
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              ThemeConstants.borderRadiusMedium,
            ),
          ),
        ),
      ),

      // Input fields
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: ThemeConstants.backgroundBtn,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            ThemeConstants.borderRadiusSmall,
          ),
          borderSide: BorderSide.none,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            ThemeConstants.borderRadiusSmall,
          ),
          borderSide: BorderSide.none,
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            ThemeConstants.borderRadiusSmall,
          ),
          borderSide: BorderSide(
            color: ThemeConstants.primaryColor,
            width: 1.5,
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
