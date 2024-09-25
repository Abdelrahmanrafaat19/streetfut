import 'package:flutter/material.dart';

double getWidth(BuildContext context, int width) {
  return width / MediaQuery.of(context).size.width;
}

double getHeight(BuildContext context, int height) {
  return height / MediaQuery.of(context).size.height;
}
