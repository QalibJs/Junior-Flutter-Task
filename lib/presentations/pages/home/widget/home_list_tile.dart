import 'package:flutter/material.dart';
import 'modal/home_profile_modal.dart';
import '../../../../constants/app_paddings.dart';
import '../../../../extension/color.dart';
import 'home_profile_photo.dart';

class HomeListTile extends StatelessWidget {
  const HomeListTile({
    super.key,
    required this.username,
    required this.status,
    required this.image,
    required this.bio,
    required this.fav,
    required this.favOut,
  });

  final String username;
  final String status;
  final String image;
  final String bio;
  final IconData fav;
  final IconData favOut;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.v5,
      child: GestureDetector(
        onTap: () {
          profile(context, username, image, status, bio, fav, favOut);
        },
        child: ColoredBox(
          color: context.background,
          child: ListTile(
            leading: HomeProfilePhoto(
              image: image,
            ),
            title: Text(username),
            subtitle: Text(status),
            trailing: const Icon(Icons.more_vert),
          ),
        ),
      ),
    );
  }
}
