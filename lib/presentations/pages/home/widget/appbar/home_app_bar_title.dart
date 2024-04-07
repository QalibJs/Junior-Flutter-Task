import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../../constants/app_assets.dart';
import '../../../../../constants/app_text_style.dart';
import '../../../../../constants/app_texts.dart';

class HomeAppBarTitle extends StatelessWidget {

  const HomeAppBarTitle({ super.key });

   @override
   Widget build(BuildContext context) {
       return Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(AppAssets.logo),
            Text(
              AppTexts.appName,
              style: AppTextStyle.textStyles,
            ),
          ],
        );
  }
}