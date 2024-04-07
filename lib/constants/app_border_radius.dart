import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppBorderRadius {
  AppBorderRadius._(); //-- obyekt yaratmamaq üçün

  static const BorderRadius circular = BorderRadius.all(
    Radius.circular(100),
  );

  static const BorderRadius all8 = BorderRadius.all(
    Radius.circular(8),
  );

  static const BorderRadius tlr8 = BorderRadius.only(
    topLeft: Radius.circular(8),
    topRight: Radius.circular(8),
  );

  static const BorderRadius all2d5 = BorderRadius.all(
    Radius.circular(2.5),
  );
}
