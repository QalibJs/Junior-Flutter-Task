import 'package:flutter_bloc/flutter_bloc.dart';

class RadioCubit extends Cubit<int> {
  RadioCubit() : super(0);

  int groupValue = 0;
  
  void chooseRep(v) {
    groupValue = v!;
    emit(groupValue);
  }
}
