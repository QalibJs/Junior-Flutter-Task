import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<bool> {
  HomeCubit() : super(true);

  bool isSwitched = false;
  bool isFav = false;
  int favs  = 173;

  void changeSwitch() {
    isSwitched = !isSwitched;
    emit(isSwitched);
  }
  

  void changeFav() {
    isFav = !isFav;
    isFav? favs++ : favs--;
    emit(isFav);
  }

 
}
