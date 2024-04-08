import 'package:flutter/material.dart';
import '../../utils/constants/app_border_radius.dart';
import '../../utils/constants/app_colors.dart';
import '../../utils/constants/app_paddings.dart';
import '../../utils/extension/color.dart';
import '../../utils/extension/sized_box.dart';
import '../../utils/extension/sizer.dart';

void modal(BuildContext context, Widget child) {
  showModalBottomSheet(
    context: context,
    builder: (context) {
      return SingleChildScrollView(
        child: Container(
          color: context.background,
          width: context.w,
          padding: AppPaddings.all12,
          child: Column(
            children: <Widget>[
              const ClipRRect(
                borderRadius: AppBorderRadius.all2d5,
                child: ColoredBox(
                  color: AppColors.black,
                  child: SizedBox(
                    width: 36,
                    height: 5,
                  ),
                ),
              ),
              5.h,
              child,
            ],
          ),
        ),
      );
    },
  );
}
