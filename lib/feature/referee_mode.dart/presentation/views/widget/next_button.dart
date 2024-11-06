import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/component/default_button.dart';
import 'package:fut/core/responsive_font.dart';
import 'package:fut/core/theme/colors.dart';

class NextButton extends StatelessWidget {
  const NextButton({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width * 0.195278,
      height: height * 0.095348,
      child: defaultButton(
          onTap: () {},
          text: "Next",
          gradient: const LinearGradient(colors: [
            Color(0xff9A8E14),
            Color(0xff95A324),
            Color(0xff90B834)
          ]),
          color: SharedColors.greenColor,
          fontFamily: "poppin",
          textcolor: SharedColors.whiteColor,
          fontSize: getResponsiveFont(context, fontSize: 25),
          raduis: 10.r),
    );
  }
}
