import '../modal_widgets/home_modal.dart';
import '../../../../widgets/global_modal_sheet.dart';

profile(context , username , image, status , bio , fav , favOut) {
  modal(
      context,
      HomeModal(
        name: username,
        image: image,
        status: status,
        bio: bio,
        fav: fav,
        favOut: favOut,
      ));
}
