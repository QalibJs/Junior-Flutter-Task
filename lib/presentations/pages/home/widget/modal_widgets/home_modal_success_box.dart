import 'package:flutter/material.dart';
import '../../../../../constants/app_assets.dart';
import '../../../../../constants/app_box_decoration.dart';
import '../../../../../extension/color.dart';

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