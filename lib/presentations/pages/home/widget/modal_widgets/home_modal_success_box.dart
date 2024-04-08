import 'package:flutter/material.dart';
import '../../../../../utils/constants/app_assets.dart';
import '../../../../../utils/constants/app_box_decoration.dart';
import '../../../../../utils/extension/color.dart';

class HomeModalSuccessBox extends StatelessWidget {

  const HomeModalSuccessBox({ super.key });

   @override
   Widget build(BuildContext context) {
       return Container(
          width: 100,
          height: 100,
          decoration: AppBoxDecoration.image(AppAssets.ellipse),
          child: Icon(
            Icons.check_outlined,
            color: context.background,
            size: 50,
          ),
        );
  }
}