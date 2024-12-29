import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../cubits/theme_cubit.dart';

Widget colorButton(BuildContext context, Color color) {
  return GestureDetector(
    onTap: () {
      context.read<ThemeCubit>().changeTheme(color);
    },
    child: CircleAvatar(
      radius: 30,
      backgroundColor: color,
    ),
  );
}
