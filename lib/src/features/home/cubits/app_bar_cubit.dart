import 'package:flutter_bloc/flutter_bloc.dart';

import '../states/app_bar_state.dart';

class AppBarCubit extends Cubit<AppBarState> {
  AppBarCubit() : super(AppBarInitial());

  String name = "لا اله الا الله";
  void changeName(String text) {
    name = text;
    emit(AppBarUpdate());
  }

  void changeName2() {
    name = 'الحمد الله';
    emit(AppBarUpdate());
  }

  void changeName3() {
    name = 'لا اله الا الله';
    emit(AppBarUpdate());
  }

  void changeName4() {
    name = ' الله اكبر';
    emit(AppBarUpdate());
  }

  void changeName5() {
    name = ' لا حول ولا قوة الا بالله';
    emit(AppBarUpdate());
  }
}
