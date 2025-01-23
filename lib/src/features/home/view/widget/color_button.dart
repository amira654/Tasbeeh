import 'package:flutter/material.dart';
import 'package:flutter_application/src/features/home/cubits/counter_cubit.dart';

class ColorButton extends StatelessWidget {
  const ColorButton(BuildContext context, {super.key, required this.color, required this.counter});
 final CounterCubit counter;
 final  Color color;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
    onTap: () {
      counter.changeTheme(color);
    },
    child: CircleAvatar(
      radius: 30,
      backgroundColor: color,
    ),
  );
  }
}


