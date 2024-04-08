import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../../../../../utils/constants/app_navigators.dart';
import '../../../../../utils/constants/app_text_style.dart';
import '../../../../../utils/constants/app_texts.dart';
import '../../../../../utils/extension/color.dart';
import '../../../../../utils/extension/sized_box.dart';
import 'home_modal_button.dart';
import 'home_modal_success_box.dart';
import '../../../../widgets/global_modal_top_widget.dart';

class HomeModalRepSuccess extends StatelessWidget {
  const HomeModalRepSuccess({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const GlobalModalHeaderWidget(headerText: AppTexts.report),
        const HomeModalSuccessBox(),
        5.h,
        Text(
          AppTexts.reportSent,
          style: AppTextStyle.black24,
        ),
        10.h,
        Row(
          children: [
            HomeModalButton(
              backgroundColor: context.secondary,
              isWhite: true,
              text: AppTexts.close,
              onPressed: () {
                AppNavigators.pop(context);
              },
            ),
          ],
        ),
        10.h,
      ],
    );
  }
}
