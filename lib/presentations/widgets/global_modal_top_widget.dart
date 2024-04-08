import 'package:flutter/material.dart';
import '../../utils/constants/app_text_style.dart';
import 'global_close_button.dart';

class GlobalModalHeaderWidget extends StatelessWidget {
  const GlobalModalHeaderWidget({super.key, required this.headerText});
  final String headerText;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          headerText,
          style: AppTextStyle.black20,
        ),
        const GlobalCloseButton(),
      ],
    );
  }
}
