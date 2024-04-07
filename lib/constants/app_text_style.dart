import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyle {
  AppTextStyle._();

  static get textStyles => const TextStyle(color: Color(0xff2B2B2B));


  static get bio => const TextStyle(
        color: AppColors.bioText,
        fontSize: 18,
      );
  
  static get red16 => const TextStyle(
        color: AppColors.red,
        fontSize: 16,
      );

  static get black24 => const TextStyle(
        color: AppColors.black,
        fontSize: 24,
      );
  static get black28 => const TextStyle(
        color: AppColors.black,
        fontSize: 28,
      );
  static get black16 => const TextStyle(
        color: AppColors.black,
        fontSize: 16,
      );
      static  orange16(color) =>  TextStyle(
        color: color,
        fontSize: 16,
      );
  static get black20 => const TextStyle(
        color: AppColors.black,
        fontSize: 20,
      );
  static get white16 => const TextStyle(
        color: AppColors.white,
        fontSize: 16,
      );
}
