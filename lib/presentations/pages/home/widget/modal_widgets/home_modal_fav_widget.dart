import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../constants/app_box_decoration.dart';
import '../../../../../constants/app_colors.dart';
import '../../../../../extension/color.dart';
import '../../../../../extension/sized_box.dart';
import '../../controller/home_cubit.dart';

class HomeModalFavWidget extends StatelessWidget {
  const HomeModalFavWidget({
    super.key,
    required this.favorite,
    required this.favoriteOutline,
  });
  final IconData favorite;
  final IconData favoriteOutline;

  @override
  Widget build(BuildContext context) {
    HomeCubit homeCubit = context.watch<HomeCubit>();
    return Column(
      children: [
        GestureDetector(
          onTap: () {
            homeCubit.changeFav();
          },
          child: Container(
            width: 100,
            decoration: AppBoxDecoration.likeButton(
              homeCubit.isFav ? AppColors.saveBoxColor : context.background,
              context.secondary,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  homeCubit.isFav ? favorite : favoriteOutline,
                  color: context.primary,
                ),
                Text("${homeCubit.favs}"),
              ],
            ),
          ),
        ),
        10.h,
      ],
    );
  }
}
