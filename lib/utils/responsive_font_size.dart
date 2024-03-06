import 'package:flutter/material.dart';

double getResponSiveFontSize(BuildContext context, {required int fontSize}) {
  double scaleFactor = getScaleFactor(context);
  double responsiveFontSize = scaleFactor * fontSize;
  double lowerLimit = fontSize * .6;
  double upperLimit = fontSize * 1.2;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}

double getScaleFactor(BuildContext context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalSize = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // var width = physicalSize / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;

  if (width < 800) {
    return width / 500;
  } else if (width < 1200) {
    return width / 1200;
  } else {
    return width / 1800;
  }
}
