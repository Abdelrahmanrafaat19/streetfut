import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';

// ignore: must_be_immutable
class TitelContainer extends StatelessWidget {
  final String title;
  final double width;
  AlignmentGeometry? alignment;
  double? fontSize;
  TitelContainer(
      {super.key,
      required this.title,
      required this.width,
      this.alignment,
      this.fontSize});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
      height: width < 1000 ? height * 0.079069 : (height * 0.079069) * (2 / 3),
      width: width,
      alignment: alignment,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r)),
        gradient: const LinearGradient(
            colors: [Color(0xff9A8E14), Color(0xff95A324), Color(0xff90B834)]),
      ),
      child: Text(
        title,
        style: TextStyle(
            fontFamily: "poppin",
            fontSize: fontSize ??
                (width < 1000
                    ? width * 0.023605
                    : (width * 0.023605) * (2 / 3)),
            color: SharedColors.whiteColor,
            fontWeight: FontWeight.bold),
      ),
    );
  }
}
