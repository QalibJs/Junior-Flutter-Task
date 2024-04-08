import 'package:flutter/material.dart';

extension Sizer on num {
  get w => SizedBox(width: toDouble());
  get h => SizedBox(height: toDouble());
}
