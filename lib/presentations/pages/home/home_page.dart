import 'package:flutter/material.dart';
import '../../../constants/app_colors.dart';
import 'widget/appbar/home_app_bar.dart';
import 'widget/home_activate_secure_mode.dart';
import 'widget/home_list_view_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: AppColors.scaffoldColor,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(70.0),
        child: HomeAppBar(),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          HomeActivateSecureMode(),
          HomeListViewBuilder(),
        ],
      ),
    );
  }
}
