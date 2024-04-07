import 'package:flutter/material.dart';
import '../../../../../constants/app_border_radius.dart';
import '../../../../../constants/app_text_style.dart';
import '../../../../../extension/sized_box.dart';

class HomeModalProfile extends StatelessWidget {
  const HomeModalProfile({super.key, required this.image, required this.name, required this.status});
  final String image;
  final String name;
  final String status;



  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: AppBorderRadius.circular,
          child: SizedBox(
            width: 128,
            height: 128,
            child: Image.asset(image),
          ),
        ),
        3.h,
        Text(name , style: AppTextStyle.black24,),
        3.h,
        Text(status)
      ],
    );
  }
}
