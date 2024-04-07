import 'package:flutter/material.dart';

extension Color on BuildContext{
  get primary => Theme.of(this).colorScheme.primary;
  get background => Theme.of(this).colorScheme.background;
  get secondary => Theme.of(this).colorScheme.secondary;


}