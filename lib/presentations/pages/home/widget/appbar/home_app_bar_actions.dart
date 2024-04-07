import 'package:flutter/material.dart';
import '../../../../../constants/app_border_radius.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../constants/app_paddings.dart';
import '../../../../../extension/color.dart';

class HomeAppBarActions extends StatelessWidget {

  const HomeAppBarActions({ super.key });

   @override
   Widget build(BuildContext context) {
       return  Padding(
          padding: AppPaddings.all8,
          child: SizedBox(
            width: 48,
            height: 48,
            child: Stack(
              alignment: Alignment.topRight,
              children: [
                const Icon(
                  Icons.notifications_outlined,
                  size: 30,
                  color: AppColors.grey2,
                ),
                Positioned(
                  top: 5,
                  right: 5,
                  child: ClipRRect(
                    borderRadius: AppBorderRadius.circular,
                    child:  ColoredBox(
                      color: context.primary,
                      child: const SizedBox(
                        width: 10,
                        height: 10,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
  }
}