import 'package:flutter/material.dart';
import '../../constants/app_border_radius.dart';
import '../../constants/app_colors.dart';
import '../../constants/app_paddings.dart';
import '../../extension/color.dart';
import '../../extension/sized_box.dart';
import '../../extension/sizer.dart';

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
