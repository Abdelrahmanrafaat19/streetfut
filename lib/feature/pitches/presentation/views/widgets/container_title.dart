import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';

// ignore: must_be_immutable
class ContainerTitle extends StatelessWidget {
  final String title;
  double? width;
  ContainerTitle(
      {super.key, required this.title, this.width = double.infinity});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 5.w, vertical: 5.h),
      width: width,
      height: 51.h,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20.r), topRight: Radius.circular(20.r)),
        gradient: const LinearGradient(
            colors: [Color(0xff9A8E14), Color(0xff95A324), Color(0xff90B834)]),
      ),
      child: Text(
        title,
        style: TextStyle(
            fontFamily: "postnobills",
            fontSize: 30.h,
            color: SharedColors.whiteColor,
            fontWeight: FontWeight.w800),
      ),
    );
  }
}
