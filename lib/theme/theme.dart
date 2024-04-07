import 'package:flutter/material.dart';
import '../extension/msp_all.dart';
import '../constants/app_colors.dart';

ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    // colors
    colorScheme: const ColorScheme.light().copyWith(
      primary: AppColors.primary,
      background: AppColors.white,
      secondary: AppColors.grey,
    ),
    //button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        backgroundColor: AppColors.primary.mspAll,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ).mspAll,
      ),
    ),
);

ThemeData darkTheme = ThemeData(
  useMaterial3: true,
  colorScheme: const ColorScheme.dark().copyWith(
      primary: AppColors.primary,
      background: AppColors.white,
      secondary: AppColors.grey),
);  //rənglər verilməyib deyə light mode ilə eyni saxladım
