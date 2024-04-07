import 'package:flutter/material.dart';
import 'app_border_radius.dart';

class AppBoxDecoration {
  AppBoxDecoration._();

  static b50grey(color) => BoxDecoration(
      border: Border.all(color: color, width: 2),
      borderRadius: AppBorderRadius.circular);

  static likeButton(Color color, borderColor) => BoxDecoration(
        border: Border.all(color: borderColor, width: 2),
        borderRadius: AppBorderRadius.circular,
        color: color,
      );
  static image(String image) => BoxDecoration(
        borderRadius: AppBorderRadius.circular,
        image: DecorationImage(image: AssetImage(image))
      );
}
