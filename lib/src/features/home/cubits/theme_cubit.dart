import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../states/theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());

  Color color = Colors.blue; 

  void changeTheme(Color newColor) {
    color = newColor; 
    emit(ThemeUpdate());
  }
}

