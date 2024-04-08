import 'package:flutter/material.dart';

class AppNavigators {
  AppNavigators._();

  static void pop(context) {
    Navigator.pop(context);
  }


  // ----- EXAMPLE ----- //

  // static void go(context, screen) {
  //   Navigator.push(
  //     context,
  //     MaterialPageRoute(
  //       builder: (context) => screen,
  //     ),
  //   );
  // }
}
