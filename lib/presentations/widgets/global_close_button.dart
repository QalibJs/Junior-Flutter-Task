import 'package:flutter/material.dart';
import '../../utils/constants/app_border_radius.dart';
import '../../utils/constants/app_navigators.dart';
import '../../utils/constants/app_paddings.dart';
import '../../utils/extension/color.dart';

class GlobalCloseButton extends StatelessWidget {
  const GlobalCloseButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AppNavigators.pop(context);
      },
      child: ClipRRect(
        borderRadius: AppBorderRadius.circular,
        child: ColoredBox(
          color: context.secondary,
          child: const Padding(
            padding: AppPaddings.all5,
            child: Icon(
              Icons.clear_outlined,
            ),
          ),
        ),
      ),
    );
  }
}
