import 'package:flutter/material.dart';
import '../../../../../extension/msp_all.dart';
import '../../../../../constants/app_button_style.dart';
import '../../../../../constants/app_text_style.dart';
import '../../../../widgets/global_button_widget.dart';

class HomeModalButton extends StatelessWidget {
  const HomeModalButton({
    super.key,
    required this.backgroundColor,
    required this.isWhite,
    required this.text,
    required this.onPressed,
  });

  final Color backgroundColor;
  final bool isWhite;
  final String text;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GlobalButton(
        buttonWidget: Text(
          text,
          style: isWhite ? AppTextStyle.black16 : AppTextStyle.white16,
        ),
        onPressed: onPressed,
        style: AppButtonStyle.buttonShape(isWhite , backgroundColor.mspAll)
      ),
    );
  }
}
