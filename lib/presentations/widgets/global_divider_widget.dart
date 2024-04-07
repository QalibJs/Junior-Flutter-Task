import 'package:flutter/material.dart';
import '../../constants/app_paddings.dart';
import '../../extension/color.dart';
import '../../extension/sizer.dart';

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
