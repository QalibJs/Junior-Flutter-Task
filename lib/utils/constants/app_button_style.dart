import 'package:flutter/material.dart';
import 'app_border_radius.dart';
import 'app_colors.dart';
import '../extension/msp_all.dart';

class AppButtonStyle {
  AppButtonStyle._();
  static buttonShape(bool isWhite, color) => ButtonStyle(
        backgroundColor: color,
        shape: RoundedRectangleBorder(
          side: isWhite
              ? const BorderSide(color: AppColors.grey2)
              : BorderSide.none,
          borderRadius: AppBorderRadius.all8,
        ).mspAll,
      );
}
