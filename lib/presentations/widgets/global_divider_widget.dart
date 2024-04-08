import 'package:flutter/material.dart';
import '../../utils/constants/app_paddings.dart';
import '../../utils/extension/color.dart';
import '../../utils/extension/sizer.dart';

class GlobalDividerWidget extends StatelessWidget {
  const GlobalDividerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.h5,
      child: ColoredBox(
        color: context.secondary,
        child: SizedBox(
          height: 3,
          width: context.w,
        ),
      ),
    );
  }
}
