import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fut/core/theme/colors.dart';

class MatchResultAndMatchResult extends StatelessWidget {
  const MatchResultAndMatchResult({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Container(
      padding: EdgeInsets.all(5.h),
      alignment: Alignment.center,
      width: double.infinity,
      height: width < 1000 ? height * 0.2093023 : (width * 0.2093023) * (0.55),
      decoration: BoxDecoration(
        color: SharedColors.greyFieldsColor.withOpacity(0.3),
        borderRadius: BorderRadius.circular(10.r),
      ),
      child: Column(
        children: [
          Container(
            alignment: Alignment.center,
            height: width < 1000
                ? height * 0.0674418
                : (height * 0.0674418) * (2 / 3),
            width: width < 1000
                ? width * 0.10300429
                : (width * 0.10300429) * (2 / 3),
            decoration: BoxDecoration(
              color: SharedColors.greenColor,
              borderRadius: BorderRadius.circular(10.r),
            ),
            child: Text(
              "12:45",
              style: TextStyle(
                fontFamily: "poppin",
                fontWeight: FontWeight.bold,
                fontSize: width < 1000
                    ? width * 0.023605
                    : (width * 0.023605) * (2 / 3),
                color: SharedColors.whiteColor,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                image: const AssetImage("assetes/images/at.png"),
                width: width * 0.0429184,
                height: height * 0.116279,
              ),
              SizedBox(
                width: width < 100 ? width * 0.14186 : 20,
              ),
              Text(
                "-",
                style: TextStyle(
                  fontFamily: "poppin",
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.035407,
                  color: SharedColors.midGreenColor,
                ),
              ),
              SizedBox(
                width: width < 100 ? width * 0.14186 : 20,
              ),
              Text(
                "-",
                style: TextStyle(
                  fontFamily: "poppin",
                  fontWeight: FontWeight.w600,
                  fontSize: width * 0.035407,
                  color: SharedColors.midGreenColor,
                ),
              ),
              SizedBox(
                width: width < 100 ? width * 0.14186 : 20,
              ),
              Image(
                image: const AssetImage("assetes/images/teamimage.png"),
                width: width * 0.0429184,
                height: height * 0.116279,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
