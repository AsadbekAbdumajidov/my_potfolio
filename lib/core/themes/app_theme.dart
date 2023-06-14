import 'package:flutter/material.dart';
import 'app_colors.dart';

final appThemeData = ThemeData.dark().copyWith(
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.blackColor,
    canvasColor: AppColors.blackColor,
    textTheme: const TextTheme(
      displayLarge: TextStyle(
          fontSize: 50,
          fontWeight: FontWeight.w700,
          color: AppColors.whiteColor),
      displayMedium: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.w600,
          color: AppColors.whiteColor),
      displaySmall: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.w700,
          color: AppColors.whiteColor),
      // headlineMedium: TextStyle(
      //     fontSize: 12.0, fontWeight: FontWeight.w500, color: AppColors.white2),
      // headlineSmall: TextStyle(
      //     fontSize: 34.0, fontWeight: FontWeight.w600, color: AppColors.white),
      titleLarge: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.w600,
          color: AppColors.whiteColor),
      titleMedium: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.w400,
          color: AppColors.whiteColor),
      titleSmall: TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.w500,
          color: AppColors.whiteColor),
      // bodyLarge: TextStyle(
      //     fontSize: 13,
      //     fontWeight: FontWeight.w600,
      //     color: AppColors.secondaryDark),
      // bodyMedium: TextStyle(
      //     fontSize: 15, fontWeight: FontWeight.w600, color: AppColors.white2),
    ));
