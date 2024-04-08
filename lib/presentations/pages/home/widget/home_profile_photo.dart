import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import '../../../../utils/constants/app_border_radius.dart';
import '../../../../utils/constants/app_colors.dart';

class HomeProfilePhoto extends StatelessWidget {

  const HomeProfilePhoto({ super.key, required this.image });
  final String image;
   @override
   Widget build(BuildContext context) {
       return  ClipRRect(
                borderRadius: AppBorderRadius.circular,
                child: ColoredBox(
                  color: AppColors.black,
                  child: SizedBox(
                    height: 40,
                    width: 40,
                    child: Image.asset(image),
                  ),
                ),
              );
  }
}