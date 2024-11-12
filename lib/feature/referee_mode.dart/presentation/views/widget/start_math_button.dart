import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';

class StartMathButton extends StatelessWidget {
  final void Function()? onTap;
  final bool toggelMatch;

  const StartMathButton({super.key, this.onTap, required this.toggelMatch});

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
          color: toggelMatch == false
              ? const Color(0xff90B834)
              : SharedColors.redColor,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: Text(
          toggelMatch == false ? "Start Match" : "Stop Match",
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
