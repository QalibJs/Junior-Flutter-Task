import 'package:flutter/material.dart';
import '../../constants/app_text_style.dart';
import '../../constants/app_texts.dart';

void globalSnackbar(color , context) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Row(
        children: [
          const Text(
            AppTexts.npotificationsClosed,
          ),
          const Spacer(),
          Text(
            AppTexts.cancel,
            style: AppTextStyle.orange16(color),
          ),
        ],
      ),
    ),
  );
}
