import 'package:flutter/material.dart';
import '../../../../../constants/app_paddings.dart';
import '../../../../../constants/app_texts.dart';
import '../../../../../extension/sized_box.dart';
import 'home_modal_fav_widget.dart';
import 'home_modal_bio.dart';
import 'home_modal_profile.dart';
import 'home_modal_profile_button.dart';
import '../../../../widgets/global_modal_top_widget.dart';
import '../../../../widgets/global_divider_widget.dart';

class HomeModal extends StatelessWidget {
  const HomeModal({
    super.key,
    required this.name,
    required this.image,
    required this.status,
    required this.bio,
    required this.fav,
    required this.favOut,
  });

  final String name;
  final String image;
  final String status;
  final String bio;
  final IconData fav;
  final IconData favOut;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.all12,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const GlobalModalHeaderWidget(headerText: AppTexts.profile,),
          8.h,
          HomeModalProfile(
            image: image,
            name: name,
            status: status,
          ),
          8.h,
          HomeModalFavWidget(
            favorite: fav,
            favoriteOutline: favOut,
          ),
          10.h,
          const GlobalDividerWidget(),
          10.h,
          HomeModalBio(bio: bio),
          10.h,
          const HomeModalProfileButton(),
        ],
      ),
    );
  }
}
