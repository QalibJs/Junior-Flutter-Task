import 'package:flutter/material.dart';
import '../../constants/app_border_radius.dart';
import '../../constants/app_colors.dart';

class GlobalModalTopContainer extends StatelessWidget {

  const GlobalModalTopContainer({ super.key });

   @override
   Widget build(BuildContext context) {
       return const ClipRRect(
          borderRadius: AppBorderRadius.all2d5,
          child: ColoredBox(
            color: AppColors.black,
            child: SizedBox(
              width: 36,
              height: 5,
            ),
          ),
        );
  }
}