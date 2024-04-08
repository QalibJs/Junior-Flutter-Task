import 'package:flutter/material.dart';
import '../../../../utils/constants/app_assets.dart';
import '../../../../utils/constants/app_texts.dart';

class UsersModel {
  final String username;
  final String status;
  final String profilePhoto;
  final String icon;
  final String bio;
  final IconData fav;
  final IconData favOut;

  UsersModel({
    required this.fav,
    required this.favOut,
    required this.bio,
    required this.username,
    required this.status,
    required this.profilePhoto,
    required this.icon,
  }); //IconData

  static List<UsersModel> users = [
    UsersModel(
      username: AppTexts.username1,
      status: AppTexts.status1,
      profilePhoto: AppAssets.profilePhoto,
      icon: "icon",
      bio: "Cat-lover, Designer, Weekend fan and biologist",
      fav: Icons.favorite,
      favOut: Icons.favorite_outline,
    ),
    UsersModel(
      username: AppTexts.username2,
      status: AppTexts.status2,
      profilePhoto: AppAssets.profilePhoto2,
      icon: "icon",
      bio: 'Salam , Menim yeni hesabimdir',
      fav: Icons.favorite,
      favOut: Icons.favorite_outline,
    ),
    UsersModel(
      username: AppTexts.username3,
      status: AppTexts.status3,
      profilePhoto: AppAssets.profilePhoto3,
      icon: "icon",
      bio: 'Flutter Developer',
      fav: Icons.favorite,
      favOut: Icons.favorite_outline,
    ),
  ];
}
