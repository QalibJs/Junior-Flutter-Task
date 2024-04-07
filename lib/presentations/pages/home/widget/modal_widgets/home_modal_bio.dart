import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../../constants/app_text_style.dart';
import '../../../../../constants/app_texts.dart';
import '../../../../../extension/sized_box.dart';

class HomeModalBio extends StatelessWidget {
  const HomeModalBio({super.key, required this.bio});

  final String bio;

  @override
  Widget build(BuildContext context) {
    return Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(AppTexts.bio),
              ],
            ),
            5.h,
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                    child: Text(
                  bio,
                  style: AppTextStyle.bio,
                )),
              ],
            ),
            10.h,
          ],
        );
  }
}
