import 'package:flutter_bloc/flutter_bloc.dart';

import '../states/counter_state.dart';



class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterInitial());

  int x = 0;

  void increment() {
    x++;
    emit(CounterUpdate());
  }

  void reset() {
    x = 0;
    emit(CounterUpdate1());
  }
}
