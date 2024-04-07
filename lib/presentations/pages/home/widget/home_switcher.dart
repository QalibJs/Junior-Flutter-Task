import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../constants/app_colors.dart';
import '../../../../extension/color.dart';
import '../../../../extension/msp_all.dart';
import '../controller/home_cubit.dart';

class HomeSwitcher extends StatelessWidget {
  const HomeSwitcher({super.key});

  @override
  Widget build(BuildContext context) {
    HomeCubit homeCubit = context.read<HomeCubit>();
    return Switch(
      activeColor: context.background,
      inactiveTrackColor: context.secondary,
      thumbColor: AppColors.black.mspAll,
      value: homeCubit.isSwitched,
      onChanged: (v) {
        homeCubit.changeSwitch();
      },
    );
  }
}
