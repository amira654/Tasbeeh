import 'package:flutter/material.dart';

class ButtonCounter extends StatelessWidget {
  const ButtonCounter({super.key, this.onTap, required this.iconData});

  final void Function()? onTap;
  final IconData iconData;

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        onTap;
      },
      child: Icon(iconData),
    );
  }
}
