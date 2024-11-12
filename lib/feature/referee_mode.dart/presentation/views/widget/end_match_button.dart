import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';

class EndMatchButton extends StatelessWidget {
  final void Function()? onTap;
  const EndMatchButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        height:
            width < 1000 ? height * 0.095348 : (height * 0.095348) * (2 / 3),
        width: width < 1000 ? width * 0.1727467 : (width * 0.1727467) * (2 / 3),
        decoration: BoxDecoration(
          color: SharedColors.redColor,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Text(
          "End Match",
          style: TextStyle(
            fontFamily: "poppin",
            fontWeight: FontWeight.bold,
            fontSize:
                width < 1000 ? width * 0.019313 : (width * 0.019313) * (2 / 3),
            color: SharedColors.whiteColor,
          ),
        ),
      ),
    );
  }
}
