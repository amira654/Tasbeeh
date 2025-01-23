import 'package:flutter/material.dart';

import '../../../../cores/style/color_app.dart';
import '../../../../cores/style/text_style.dart';

AppBar appBar({required String title}) {
  
  return AppBar(
    backgroundColor: ColorApp.backBlue,
    centerTitle: true,
    title: Text(title, style: appBarstyle),
  );
}
