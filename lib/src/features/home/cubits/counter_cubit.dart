import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../cores/style/color_back_ground_image_home.dart';
import '../../../cores/style/image_app.dart';
import 'counter_state.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int x = 0;
  Color color = Colors.blue;
  String name = "لا اله الا الله";

  void increment() {
    x++;
    emit(CounterUpdate());
  }

  void reset() {
    x = 0;
    emit(CounterUpdate1());
  }

  void changeTheme(Color newColor) {
    color = newColor;
    emit(ThemeUpdate());
  }

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
