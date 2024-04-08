import 'package:flutter/material.dart';
import '../../../../utils/constants/app_border_radius.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../model/users_model.dart';
import '../../../../utils/extension/sizer.dart';
import 'home_list_tile.dart';

class HomeListViewBuilder extends StatelessWidget {
  const HomeListViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    List<UsersModel> users = UsersModel.users;
    return Expanded(
      flex: 10,
      child: Padding(
        padding: AppPaddings.all16,
        child: SizedBox(
          height: context.h,
          child: ListView.builder(
            itemCount: users.length,
            itemBuilder: (_, i) {
              final datas = users[i];
              return ClipRRect(
                borderRadius: AppBorderRadius.all8,
                child: HomeListTile(
                  username: datas.username,
                  status: datas.status,
                  image: datas.profilePhoto,
                  bio: datas.bio,
                  fav: datas.fav,
                  favOut: datas.favOut,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
