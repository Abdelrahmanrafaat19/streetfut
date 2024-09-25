import 'package:flutter/material.dart';
import 'package:fut/core/theme/colors.dart';

Widget defaultButton(
    {String text = "",
    double fontSize = 0.0,
    Color? color = SharedColors.whiteColor,
    Color textcolor = SharedColors.whiteColor,
    var onTap,
    String? fontFamily,
    double raduis = 45,
    double paddingrl = 0.0,
    double paddingtb = 0.0,
    Gradient? gradient}) {
  return GestureDetector(
    // highlightColor: const Color(0xffF8F8F8),
    // splashColor: const Color(0xffF8F8F8),
    onTap: onTap,
    child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          gradient: gradient,
          borderRadius: BorderRadius.circular(raduis),
          color: color,
        ),
        padding:
            EdgeInsets.symmetric(vertical: paddingtb, horizontal: paddingrl),
        child: FittedBox(
          fit: BoxFit.scaleDown,
          child: Text(
            text,
            style: TextStyle(
                fontSize: fontSize,
                fontFamily: fontFamily,
                fontWeight: FontWeight.bold,
                color: textcolor),
          ),
        )),
  );
}

Widget textButton({var onPressed, required Widget text}) {
  return TextButton(onPressed: onPressed, child: text);
}
