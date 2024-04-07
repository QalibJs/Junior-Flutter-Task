import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../constants/app_border_radius.dart';
import '../../../../constants/app_colors.dart';
import '../../../../constants/app_paddings.dart';
import '../../../../constants/app_text_style.dart';
import '../../../../constants/app_texts.dart';
import '../../../../extension/color.dart';
import '../../../../extension/sizer.dart';
import '../controller/home_cubit.dart';
import 'home_switcher.dart';

class HomeActivateSecureMode extends StatelessWidget {
  const HomeActivateSecureMode({super.key});

  @override
  Widget build(BuildContext context) {
    HomeCubit homeCubit = context.watch<HomeCubit>();
    return Expanded(
      child: ColoredBox(
        color: context.background,
        child: SizedBox(
          width: context.w,
          child: Padding(
            padding: AppPaddings.all12.copyWith(bottom: 16),
            child: ClipRRect(
              borderRadius: AppBorderRadius.all8,
              child: ColoredBox(
                color: homeCubit.isSwitched ? AppColors.black : context.secondary,
                child: Padding(
                  padding: AppPaddings.h5,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        AppTexts.switchText,
                        style: homeCubit.isSwitched ?  AppTextStyle.white16 : AppTextStyle.black16,
                      ),
                      const HomeSwitcher(),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
