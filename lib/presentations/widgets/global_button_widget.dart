import 'package:flutter/material.dart';

class GlobalButton extends StatelessWidget {
  const GlobalButton({
    super.key,
    required this.onPressed,
    required this.buttonWidget,
    this.style,
  });

  final void Function() onPressed;
  final Widget buttonWidget;
  final ButtonStyle? style;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: style,
      child: buttonWidget,
    );
  }
}
