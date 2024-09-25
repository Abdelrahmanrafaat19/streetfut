import "package:flutter/material.dart";

double getScalFactor(BuildContext context) {
  double width = MediaQuery.sizeOf(context).width;
  if (width < 600) {
    return width / 400;
  } else if (width < 900) {
    return width / 700;
  } else {
    return width / 1000;
  }
}

double getResponsiveFont(BuildContext context, {required double fontSize}) {
  double scalFactor = getScalFactor(context);
  double responsiveFontSize = scalFactor * fontSize;
  double lowerLimit = fontSize * 0.8;
  double upperLimit = fontSize;
  return responsiveFontSize.clamp(lowerLimit, upperLimit);
}
