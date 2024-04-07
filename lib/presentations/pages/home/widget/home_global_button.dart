import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../extension/color.dart';
import '../../../../extension/sized_box.dart';
import 'modal_widgets/home_modal_button.dart';

class HomeGlobalButton extends StatelessWidget {
  const HomeGlobalButton({
    super.key,
    required this.text,
    required this.text2, required this.onPressed, required this.onPressedNo, 
  });
  final String text;
  final String text2;
  final void Function() onPressed;
  final void Function() onPressedNo;


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        HomeModalButton(
          backgroundColor: context.background,
          isWhite: true,
          text: text,
          onPressed: onPressedNo,
        ),
        10.w,
        HomeModalButton(
          onPressed:onPressed,
          backgroundColor: context.primary,
          isWhite: false,
          text: text2,
        ),
      ],
    );
  }
}