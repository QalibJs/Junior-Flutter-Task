import 'package:flutter/material.dart';
import '../../../../../constants/app_assets.dart';
import '../../../../../constants/app_border_radius.dart';
import '../../../../../constants/app_paddings.dart';

class HomeAppBarLeadingWidget extends StatelessWidget {

  const HomeAppBarLeadingWidget({ super.key });

   @override
   Widget build(BuildContext context) {
       return Padding(
          padding: AppPaddings.all10,
          child: ClipRRect(
            borderRadius: AppBorderRadius.circular,
            child: Image.asset(
              AppAssets.currentProfile,
            ),
          ),
        );
  }
}