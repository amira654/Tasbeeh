import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../cores/style/text_style.dart';
import '../../cubits/app_bar_cubit.dart';

Widget drawer(BuildContext context, String text) {
  return InkWell(
      onTap: () {
        context.read<AppBarCubit>().changeName(text);
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
