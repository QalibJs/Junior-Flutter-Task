import '../../../../../utils/constants/app_texts.dart';
import '../home_notification_modal.dart';
import '../../../../widgets/global_modal_sheet.dart';

mute(context) {
  modal(
    context,
    const HomeNotificationModal(
      text: AppTexts.notificationText,
    ),
  );
}
