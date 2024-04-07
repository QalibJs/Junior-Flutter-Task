import 'package:flutter/material.dart';
import '../../../../../extension/color.dart';
import 'home_app_bar_actions.dart';
import 'home_app_bar_leading_widget.dart';
import 'home_app_bar_title.dart';

class HomeAppBar extends StatelessWidget {

  const HomeAppBar({ super.key });

   @override
   Widget build(BuildContext context) {
       return AppBar(
        centerTitle: true,
        backgroundColor: context.background,
        title: const HomeAppBarTitle(),
        leading: const HomeAppBarLeadingWidget(),
        actions: const [
         HomeAppBarActions()
        ],
      );
  }
  
}
