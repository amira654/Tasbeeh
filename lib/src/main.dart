import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'features/home/cubits/app_bar_cubit.dart';
import 'features/home/cubits/counter_cubit.dart';
import 'features/home/cubits/theme_cubit.dart';
import 'my_app.dart';

void main() {
  runApp(MultiBlocProvider(providers: [
    BlocProvider(create: (_) => AppBarCubit()),
    BlocProvider(create: (_) => CounterCubit()),
    BlocProvider(create: (_) => ThemeCubit()),
  ], child: const MyApp()));
}
