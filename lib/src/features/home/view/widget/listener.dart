 
 
 import 'package:flutter/material.dart';

import '../../cubits/counter_state.dart';

listener (context, state){
  return (context, state) {
    if (state is ThemeUpdate) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
                duration: Duration(milliseconds: 300),
                content: Text('تم التحديث بنجاح')),
          );
        }
  };
}