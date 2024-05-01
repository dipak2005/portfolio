import 'package:flutter/material.dart';

double isFontSize(BuildContext context, double value) {
  var width = MediaQuery.sizeOf(context).width;
  if (width >= 1024) {
    return value;
  } else if (width <= 1024 && width >= 500) {
    return value;
  } else {
    return value;
  }
}
