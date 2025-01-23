import 'package:flutter/material.dart';
import 'package:flutter_application/src/features/home/cubits/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../cores/style/text_style.dart';

Widget drawer(BuildContext context, String text) {
  return InkWell(
      onTap: () {
        context.read<CounterCubit>().changeName(text);
      },
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            text,
            style: drawerStyle,
          ),
        ),
      ));
}
