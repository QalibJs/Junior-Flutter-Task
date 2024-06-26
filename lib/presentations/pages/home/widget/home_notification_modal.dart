import 'package:flutter/material.dart';
import '../../../../utils/constants/app_navigators.dart';
import '../../../../utils/constants/app_paddings.dart';
import '../../../../utils/constants/app_text_style.dart';
import '../../../../utils/constants/app_texts.dart';
import '../../../../utils/extension/color.dart';
import 'home_global_button.dart';
import '../../../widgets/global_snackbar_widget.dart';

class HomeNotificationModal extends StatelessWidget {
  const HomeNotificationModal({
    super.key,
    required this.text,
  });
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: AppPaddings.all10,
      child: Column(
        children: [
          Text(
            text,
            style: AppTextStyle.black28,
          ),
          HomeGlobalButton(
            text: AppTexts.cancel,
            text2: AppTexts.yesClose,
            onPressed: () {
              AppNavigators.pop(context);
              globalSnackbar(context.primary, context);
            },
            onPressedNo: () {
              AppNavigators.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
