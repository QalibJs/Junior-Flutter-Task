import 'package:flutter/material.dart';
import '../../../../../constants/app_border_radius.dart';
import '../../../../../constants/app_box_decoration.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_navigators.dart';
import '../../../../../constants/app_paddings.dart';
import '../../../../../constants/app_text_style.dart';
import '../../../../../constants/app_texts.dart';
import '../../../../../extension/color.dart';
import '../../../../../extension/sized_box.dart';
import '../modal/home_block_modal.dart';
import '../modal/home_mute_modal.dart';
import '../modal/home_report_modal.dart';
import '../../../../widgets/global_button_widget.dart';

class HomeModalProfileButton extends StatelessWidget {
  const HomeModalProfileButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: GlobalButton(
            onPressed: () {},
            buttonWidget: Text(
              AppTexts.sendMessage,
              style: AppTextStyle.white16,
            ),
          ),
        ),
        20.w,
        Row(
          children: [
            Container(
                decoration: AppBoxDecoration.b50grey(context.secondary),
                padding: AppPaddings.all2,
                child: PopupMenuButton(
                  shape: const RoundedRectangleBorder(
                      borderRadius: AppBorderRadius.all8),
                  splashRadius: 0.2,
                  itemBuilder: (context) => [
                    PopupMenuItem(
                        onTap: () {
                          AppNavigators.pop(context);
                          mute(context);
                        },
                        child: Row(
                          children: [
                            const Icon(Icons.notifications_off_outlined),
                            5.w,
                            const Text(AppTexts.npotificationsClosed),
                          ],
                        )),
                    PopupMenuItem(
                        onTap: () {
                          AppNavigators.pop(context);
                          block(context);
                        },
                        child: Row(
                          children: [
                            const Icon(Icons.block_flipped),
                            5.w,
                            const Text(AppTexts.block),
                          ],
                        )),
                    PopupMenuItem(
                      onTap: () {
                        AppNavigators.pop(context);
                        repModal(context , );
                      },
                      child: Row(
                        children: [
                          const Icon(
                            Icons.flag,
                            color: AppColors.red,
                          ),
                          5.w,
                          Text(
                            AppTexts.report,
                            style: AppTextStyle.red16,
                          ),
                        ],
                      ),
                    ),
                  ],
                )),
          ],
        )
      ],
    );
  }
}
